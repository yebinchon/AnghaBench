
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool valid_pointer_binop(int op) {
    switch (op) {
    case '-': case '<': case '>': case 131:
    case 128: case 130: case 129:
        return 1;
    default:
        return 0;
    }
}
