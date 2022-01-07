
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TokenKind ;






 int assert (int ) ;

unsigned long long eval_unary_op_ull(TokenKind op, unsigned long long val) {
    switch (op) {
    case 131:
        return +val;
    case 128:
        return 0ull - val;
    case 130:
        return ~val;
    case 129:
        return !val;
    default:
        assert(0);
        break;
    }
    return 0;
}
