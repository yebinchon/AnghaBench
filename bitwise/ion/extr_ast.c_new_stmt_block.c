
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int block; } ;
typedef int StmtList ;
typedef TYPE_1__ Stmt ;
typedef int SrcPos ;


 int STMT_BLOCK ;
 TYPE_1__* new_stmt (int ,int ) ;

Stmt *new_stmt_block(SrcPos pos, StmtList block) {
    Stmt *s = new_stmt(STMT_BLOCK, pos);
    s->block = block;
    return s;
}
