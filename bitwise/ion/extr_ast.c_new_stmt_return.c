
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * expr; } ;
typedef TYPE_1__ Stmt ;
typedef int SrcPos ;
typedef int Expr ;


 int STMT_RETURN ;
 TYPE_1__* new_stmt (int ,int ) ;

Stmt *new_stmt_return(SrcPos pos, Expr *expr) {
    Stmt *s = new_stmt(STMT_RETURN, pos);
    s->expr = expr;
    return s;
}
