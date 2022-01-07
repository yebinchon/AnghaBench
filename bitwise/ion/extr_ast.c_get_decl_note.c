
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t num_notes; TYPE_2__* notes; } ;
struct TYPE_8__ {TYPE_1__ notes; } ;
struct TYPE_7__ {char const* name; } ;
typedef TYPE_2__ Note ;
typedef TYPE_3__ Decl ;



Note *get_decl_note(Decl *decl, const char *name) {
    if (!decl) {
        return ((void*)0);
    }
    for (size_t i = 0; i < decl->notes.num_notes; i++) {
        Note *note = decl->notes.notes + i;
        if (note->name == name) {
            return note;
        }
    }
    return ((void*)0);
}
