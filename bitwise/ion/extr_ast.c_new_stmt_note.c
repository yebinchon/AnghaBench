
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int note; } ;
typedef TYPE_1__ Stmt ;
typedef int SrcPos ;
typedef int Note ;


 int STMT_NOTE ;
 TYPE_1__* new_stmt (int ,int ) ;

Stmt *new_stmt_note(SrcPos pos, Note note) {
    Stmt *s = new_stmt(STMT_NOTE, pos);
    s->note = note;
    return s;
}
