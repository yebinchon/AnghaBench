
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char const* name; } ;
struct TYPE_6__ {size_t num_notes; TYPE_3__* notes; } ;
struct TYPE_7__ {TYPE_1__ notes; } ;
typedef TYPE_2__ Stmt ;
typedef TYPE_3__ Note ;



Note *get_stmt_note(Stmt *stmt, const char *name) {
    for (size_t i = 0; i < stmt->notes.num_notes; i++) {
        Note *note = stmt->notes.notes + i;
        if (note->name == name) {
            return note;
        }
    }
    return ((void*)0);
}
