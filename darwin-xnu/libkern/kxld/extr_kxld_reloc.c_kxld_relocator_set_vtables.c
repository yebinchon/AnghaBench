
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* vtables; } ;
typedef TYPE_1__ KXLDRelocator ;
typedef int KXLDDict ;



void
kxld_relocator_set_vtables(KXLDRelocator *relocator, const KXLDDict *vtables)
{
    relocator->vtables = vtables;
}
