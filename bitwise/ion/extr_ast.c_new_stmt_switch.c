
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t num_cases; int cases; int * expr; } ;
struct TYPE_6__ {TYPE_1__ switch_stmt; } ;
typedef int SwitchCase ;
typedef TYPE_2__ Stmt ;
typedef int SrcPos ;
typedef int Expr ;


 int AST_DUP (int *) ;
 int STMT_SWITCH ;
 TYPE_2__* new_stmt (int ,int ) ;

Stmt *new_stmt_switch(SrcPos pos, Expr *expr, SwitchCase *cases, size_t num_cases) {
    Stmt *s = new_stmt(STMT_SWITCH, pos);
    s->switch_stmt.expr = expr;
    s->switch_stmt.cases = AST_DUP(cases);
    s->switch_stmt.num_cases = num_cases;
    return s;
}
