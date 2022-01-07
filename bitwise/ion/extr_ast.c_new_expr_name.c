
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; } ;
typedef int SrcPos ;
typedef TYPE_1__ Expr ;


 int EXPR_NAME ;
 TYPE_1__* new_expr (int ,int ) ;

Expr *new_expr_name(SrcPos pos, const char *name) {
    Expr *e = new_expr(EXPR_NAME, pos);
    e->name = name;
    return e;
}
