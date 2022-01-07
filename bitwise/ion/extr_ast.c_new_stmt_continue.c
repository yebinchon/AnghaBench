
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Stmt ;
typedef int SrcPos ;


 int STMT_CONTINUE ;
 int * new_stmt (int ,int ) ;

Stmt *new_stmt_continue(SrcPos pos) {
    return new_stmt(STMT_CONTINUE, pos);
}
