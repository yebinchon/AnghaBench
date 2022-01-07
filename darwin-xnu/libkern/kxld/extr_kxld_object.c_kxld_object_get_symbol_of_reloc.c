
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {int * kextExecutable; } ;
struct TYPE_9__ {int relocator; TYPE_1__ split_info; int * file; } ;
struct TYPE_8__ {int * data; } ;
typedef int KXLDSym ;
typedef TYPE_2__ KXLDSect ;
typedef int KXLDReloc ;
typedef TYPE_3__ KXLDObject ;


 scalar_t__ isOldInterface ;
 scalar_t__ kxld_object_is_final_image (TYPE_3__ const*) ;
 int * kxld_reloc_get_symbol (int *,int const*,int *) ;

const KXLDSym *
kxld_object_get_symbol_of_reloc(const KXLDObject *object,
    const KXLDReloc *reloc, const KXLDSect *sect)
{
    const KXLDSym *sym = ((void*)0);
    u_char *my_file;

    if (isOldInterface) {
        my_file = object->file;
    }
    else {
        my_file = object->split_info.kextExecutable;
    }

    if (kxld_object_is_final_image(object)) {
       sym = kxld_reloc_get_symbol(&object->relocator, reloc, my_file);
   } else {
       sym = kxld_reloc_get_symbol(&object->relocator, reloc, sect->data);
   }
    return sym;
}
