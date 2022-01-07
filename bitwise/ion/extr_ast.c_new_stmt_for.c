
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int block; TYPE_2__* next; int * cond; TYPE_2__* init; } ;
struct TYPE_8__ {TYPE_1__ for_stmt; } ;
typedef int StmtList ;
typedef TYPE_2__ Stmt ;
typedef int SrcPos ;
typedef int Expr ;


 int STMT_FOR ;
 TYPE_2__* new_stmt (int ,int ) ;

Stmt *new_stmt_for(SrcPos pos, Stmt *init, Expr *cond, Stmt *next, StmtList block) {
    Stmt *s = new_stmt(STMT_FOR, pos);
    s->for_stmt.init = init;
    s->for_stmt.cond = cond;
    s->for_stmt.next = next;
    s->for_stmt.block = block;
    return s;
}
