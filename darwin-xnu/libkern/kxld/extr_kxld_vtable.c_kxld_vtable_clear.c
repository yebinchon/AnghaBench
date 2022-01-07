
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entries; int is_patched; int * name; int * vtable; } ;
typedef TYPE_1__ KXLDVTable ;


 int FALSE ;
 int check (TYPE_1__*) ;
 int kxld_array_clear (int *) ;

void
kxld_vtable_clear(KXLDVTable *vtable)
{
    check(vtable);

    vtable->vtable = ((void*)0);
    vtable->name = ((void*)0);
    vtable->is_patched = FALSE;
    kxld_array_clear(&vtable->entries);
}
