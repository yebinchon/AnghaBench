
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pos; int kind; } ;
typedef int StmtKind ;
typedef TYPE_1__ Stmt ;
typedef int SrcPos ;


 TYPE_1__* ast_alloc (int) ;

Stmt *new_stmt(StmtKind kind, SrcPos pos) {
    Stmt *s = ast_alloc(sizeof(Stmt));
    s->kind = kind;
    s->pos = pos;
    return s;
}
