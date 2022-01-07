
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; int id; } ;
typedef TYPE_1__ Token ;
 int OP_SAL ;
 int OP_SAR ;
 int OP_SHR ;
 scalar_t__ TKEYWORD ;

__attribute__((used)) static int get_compound_assign_op(Token *tok) {
    if (tok->kind != TKEYWORD)
        return 0;
    switch (tok->id) {
    case 138: return '+';
    case 129: return '-';
    case 134: return '*';
    case 136: return '/';
    case 135: return '%';
    case 137: return '&';
    case 133: return '|';
    case 128: return '^';
    case 132: return OP_SAL;
    case 131: return OP_SAR;
    case 130: return OP_SHR;
    default: return 0;
    }
}
