
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * decl; } ;
typedef TYPE_1__ Stmt ;
typedef int SrcPos ;
typedef int Decl ;


 int STMT_DECL ;
 TYPE_1__* new_stmt (int ,int ) ;

Stmt *new_stmt_decl(SrcPos pos, Decl *decl) {
    Stmt *s = new_stmt(STMT_DECL, pos);
    s->decl = decl;
    return s;
}
