
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pos; int kind; } ;
typedef int SrcPos ;
typedef int ExprKind ;
typedef TYPE_1__ Expr ;


 TYPE_1__* ast_alloc (int) ;

Expr *new_expr(ExprKind kind, SrcPos pos) {
    Expr *e = ast_alloc(sizeof(Expr));
    e->kind = kind;
    e->pos = pos;
    return e;
}
