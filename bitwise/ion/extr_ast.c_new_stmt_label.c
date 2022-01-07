
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* label; } ;
typedef TYPE_1__ Stmt ;
typedef int SrcPos ;


 int STMT_LABEL ;
 TYPE_1__* new_stmt (int ,int ) ;

Stmt *new_stmt_label(SrcPos pos, const char *label) {
    Stmt *s = new_stmt(STMT_LABEL, pos);
    s->label = label;
    return s;
}
