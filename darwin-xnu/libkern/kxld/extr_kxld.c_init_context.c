
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int kern_return_t ;
struct TYPE_3__ {int vtables_by_name; int obsolete_symbols_by_name; int defined_cxx_symbols_by_value; int defined_symbols_by_name; int dependencies; int objects; } ;
typedef TYPE_1__ KXLDContext ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int finish ;
 int kxld_array_init (int *,int ,int) ;
 int kxld_dict_init (int *,int ,int ,int ) ;
 int kxld_dict_kxldaddr_cmp ;
 int kxld_dict_kxldaddr_hash ;
 int kxld_dict_string_cmp ;
 int kxld_dict_string_hash ;
 int kxld_kext_sizeof () ;
 int kxld_object_sizeof () ;
 int require_noerr (int ,int ) ;

__attribute__((used)) static kern_return_t
init_context(KXLDContext *context, u_int ndependencies)
{
    kern_return_t rval = KERN_FAILURE;



    rval = kxld_array_init(&context->objects,
        kxld_object_sizeof(), 2 * ndependencies + 1);
    require_noerr(rval, finish);

    rval = kxld_array_init(&context->dependencies,
        kxld_kext_sizeof(), ndependencies);
    require_noerr(rval, finish);

    rval = kxld_dict_init(&context->defined_symbols_by_name,
        kxld_dict_string_hash, kxld_dict_string_cmp, 0);
    require_noerr(rval, finish);

    rval = kxld_dict_init(&context->defined_cxx_symbols_by_value,
        kxld_dict_kxldaddr_hash, kxld_dict_kxldaddr_cmp, 0);
    require_noerr(rval, finish);

    rval = kxld_dict_init(&context->obsolete_symbols_by_name,
        kxld_dict_string_hash, kxld_dict_string_cmp, 0);
    require_noerr(rval, finish);

    rval = kxld_dict_init(&context->vtables_by_name, kxld_dict_string_hash,
        kxld_dict_string_cmp, 0);
    require_noerr(rval, finish);

    rval = KERN_SUCCESS;
finish:
    return rval;
}
