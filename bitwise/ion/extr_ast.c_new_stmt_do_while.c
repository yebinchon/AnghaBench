
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int block; int * cond; } ;
struct TYPE_6__ {TYPE_1__ while_stmt; } ;
typedef int StmtList ;
typedef TYPE_2__ Stmt ;
typedef int SrcPos ;
typedef int Expr ;


 int STMT_DO_WHILE ;
 TYPE_2__* new_stmt (int ,int ) ;

Stmt *new_stmt_do_while(SrcPos pos, Expr *cond, StmtList block) {
    Stmt *s = new_stmt(STMT_DO_WHILE, pos);
    s->while_stmt.cond = cond;
    s->while_stmt.block = block;
    return s;
}
