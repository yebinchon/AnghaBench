
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_4__ {int * typeof_type; } ;
typedef int SrcPos ;
typedef TYPE_1__ Expr ;


 int EXPR_TYPEOF_TYPE ;
 TYPE_1__* new_expr (int ,int ) ;

Expr *new_expr_typeof_type(SrcPos pos, Typespec *type) {
    Expr *e = new_expr(EXPR_TYPEOF_TYPE, pos);
    e->typeof_type = type;
    return e;
}
