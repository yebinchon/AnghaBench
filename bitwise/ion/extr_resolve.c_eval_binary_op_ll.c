
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TokenKind ;
 int assert (int ) ;

long long eval_binary_op_ll(TokenKind op, long long left, long long right) {
    switch (op) {
    case 133:
        return left * right;
    case 141:
        return right != 0 ? left / right : 0;
    case 134:
        return right != 0 ? left % right : 0;
    case 142:
        return left & right;
    case 137:
        return left << right;
    case 130:
        return left >> right;
    case 143:
        return left + right;
    case 129:
        return left - right;
    case 131:
        return left | right;
    case 128:
        return left ^ right;
    case 140:
        return left == right;
    case 132:
        return left != right;
    case 136:
        return left < right;
    case 135:
        return left <= right;
    case 139:
        return left > right;
    case 138:
        return left >= right;
    default:
        assert(0);
        break;
    }
    return 0;
}
