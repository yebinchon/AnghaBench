
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_8__ {scalar_t__ is_final_image; int relocator; } ;
typedef TYPE_1__ KXLDObject ;
typedef int KXLDDict ;


 int FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int finish ;
 int kxld_relocator_set_vtables (int *,int const*) ;
 int populate_got (TYPE_1__*) ;
 int populate_kmod_info (TYPE_1__*) ;
 int process_relocs_from_sections (TYPE_1__*) ;
 int process_relocs_from_tables (TYPE_1__*) ;
 int process_symbol_pointers (TYPE_1__*) ;
 int require_action (int ,int ,int ) ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_object_process_relocations(KXLDObject *object,
    const KXLDDict *patched_vtables)
{
    kern_return_t rval = KERN_FAILURE;

    (void) kxld_relocator_set_vtables(&object->relocator, patched_vtables);
    if (object->is_final_image) {







        require_action(FALSE, finish, rval=KERN_FAILURE);

    } else {
        require_action(FALSE, finish, rval=KERN_FAILURE);

    }


    rval = populate_kmod_info(object);
    require_noerr(rval, finish);

    rval = KERN_SUCCESS;
finish:
   return rval;
}
