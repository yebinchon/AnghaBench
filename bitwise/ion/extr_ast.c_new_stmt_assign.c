
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TokenKind ;
struct TYPE_5__ {int * right; int * left; int op; } ;
struct TYPE_6__ {TYPE_1__ assign; } ;
typedef TYPE_2__ Stmt ;
typedef int SrcPos ;
typedef int Expr ;


 int STMT_ASSIGN ;
 TYPE_2__* new_stmt (int ,int ) ;

Stmt *new_stmt_assign(SrcPos pos, TokenKind op, Expr *left, Expr *right) {
    Stmt *s = new_stmt(STMT_ASSIGN, pos);
    s->assign.op = op;
    s->assign.left = left;
    s->assign.right = right;
    return s;
}
