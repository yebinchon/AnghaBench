
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_6__ {TYPE_2__* expr; int * type; } ;
struct TYPE_7__ {TYPE_1__ cast; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int EXPR_CAST ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_cast(SrcPos pos, Typespec *type, Expr *expr) {
    Expr *e = new_expr(EXPR_CAST, pos);
    e->cast.type = type;
    e->cast.expr = expr;
    return e;
}
