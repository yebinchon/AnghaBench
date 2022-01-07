
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; struct TYPE_3__** param; } ;
typedef TYPE_1__ AVExpr ;
__attribute__((used)) static int verify_expr(AVExpr *e)
{
    if (!e) return 0;
    switch (e->type) {
        case 128:
        case 148: return 1;
        case 146:
        case 145:
        case 131:
        case 139:
        case 144:
        case 140:
        case 141:
        case 147:
        case 150:
        case 129:
        case 134:
        case 132:
        case 137:
        case 135:
        case 133:
            return verify_expr(e->param[0]) && !e->param[1];
        case 136:
            return verify_expr(e->param[0])
                   && (!e->param[1] || verify_expr(e->param[1]));
        case 143:
        case 142:
        case 130:
            return verify_expr(e->param[0]) && verify_expr(e->param[1])
                   && (!e->param[2] || verify_expr(e->param[2]));
        case 151:
        case 149:
        case 138:
            return verify_expr(e->param[0]) &&
                   verify_expr(e->param[1]) &&
                   verify_expr(e->param[2]);
        default: return verify_expr(e->param[0]) && verify_expr(e->param[1]) && !e->param[2];
    }
}
