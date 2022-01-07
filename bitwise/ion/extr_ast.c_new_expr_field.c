
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* name; TYPE_2__* expr; } ;
struct TYPE_7__ {TYPE_1__ field; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int EXPR_FIELD ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_field(SrcPos pos, Expr *expr, const char *name) {
    Expr *e = new_expr(EXPR_FIELD, pos);
    e->field.expr = expr;
    e->field.name = name;
    return e;
}
