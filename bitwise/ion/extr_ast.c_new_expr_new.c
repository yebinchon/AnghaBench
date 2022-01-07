
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* arg; TYPE_2__* len; TYPE_2__* alloc; } ;
struct TYPE_9__ {TYPE_1__ new_expr; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int EXPR_NEW ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_new(SrcPos pos, Expr *alloc, Expr *len, Expr *arg) {
    Expr *e = new_expr(EXPR_NEW, pos);
    e->new_expr.alloc = alloc;
    e->new_expr.len = len;
    e->new_expr.arg = arg;
    return e;
}
