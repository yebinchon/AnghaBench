
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int entries; } ;
typedef TYPE_1__ KXLDVTable ;


 int bzero (TYPE_1__*,int) ;
 int check (TYPE_1__*) ;
 int kxld_array_deinit (int *) ;

void
kxld_vtable_deinit(KXLDVTable *vtable)
{
    check(vtable);

    kxld_array_deinit(&vtable->entries);
    bzero(vtable, sizeof(*vtable));
}
