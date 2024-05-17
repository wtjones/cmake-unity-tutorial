#! /bin/bash

set -euo pipefail

main() {
  cmake -GNinja -DTARGET_GROUP=test -Bbuild
  ctest --test-dir build
}

main
