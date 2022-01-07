
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
typedef size_t u_int ;
typedef int u_char ;
typedef int kern_return_t ;
struct TYPE_9__ {size_t nitems; } ;
struct TYPE_8__ {int defined_cxx_symbols_by_value; int * kext; int vtables_by_name; int defined_symbols_by_name; TYPE_3__ dependencies; int obsolete_symbols_by_name; } ;
struct TYPE_7__ {char const* kext_name; char const* interface_name; scalar_t__ is_direct_dependency; int interface_size; int * interface; int kext_size; int * kext; } ;
typedef int KXLDObject ;
typedef int KXLDKext ;
typedef TYPE_1__ KXLDDependency ;
typedef TYPE_2__ KXLDContext ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int finish ;
 int * get_object_for_file (TYPE_2__*,int *,int ,char const*) ;
 int * kxld_array_get_item (TYPE_3__*,size_t) ;
 int kxld_kext_export_symbols (int *,int *,int *,int *) ;
 int kxld_kext_export_vtables (int *,int *,int *,int *) ;
 int kxld_kext_init (int *,int *,int *) ;
 int require_action (int *,int ,int ) ;
 int require_noerr (int ,int ) ;

__attribute__((used)) static kern_return_t
init_kext_objects(KXLDContext *context,
                  u_char *file,
                  u_long size,
                  const char *name,
                  KXLDDependency *dependencies,
                  u_int ndependencies)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDKext *kext = ((void*)0);
    KXLDObject *kext_object = ((void*)0);
    KXLDObject *interface_object = ((void*)0);
    u_int i = 0;





    for (i = 0; i < ndependencies; ++i) {
        kext = kxld_array_get_item(&context->dependencies, i);
        kext_object = ((void*)0);
        interface_object = ((void*)0);

        kext_object = get_object_for_file(context, dependencies[i].kext,
                                          dependencies[i].kext_size, dependencies[i].kext_name);
        require_action(kext_object, finish, rval=KERN_FAILURE);

        if (dependencies[i].interface) {
            interface_object = get_object_for_file(context,
                                                   dependencies[i].interface, dependencies[i].interface_size,
                                                   dependencies[i].interface_name);
            require_action(interface_object, finish, rval=KERN_FAILURE);
        }

        rval = kxld_kext_init(kext, kext_object, interface_object);
        require_noerr(rval, finish);

        if (dependencies[i].is_direct_dependency) {
            rval = kxld_kext_export_symbols(kext,
                                            &context->defined_symbols_by_name,
                                            &context->obsolete_symbols_by_name,
                                            &context->defined_cxx_symbols_by_value);
            require_noerr(rval, finish);
        } else {
            rval = kxld_kext_export_symbols(kext,
                                                                  ((void*)0), ((void*)0),
                                            &context->defined_cxx_symbols_by_value);
            require_noerr(rval, finish);
        }
    }


    for (i = 0; i < context->dependencies.nitems; ++i) {
        kext = kxld_array_get_item(&context->dependencies, i);

        rval = kxld_kext_export_vtables(kext,
                                        &context->defined_cxx_symbols_by_value,
                                        &context->defined_symbols_by_name,
                                        &context->vtables_by_name);
        require_noerr(rval, finish);
    }




    kext_object = get_object_for_file(context, file, size, name);
    require_action(kext_object, finish, rval=KERN_FAILURE);

    rval = kxld_kext_init(context->kext, kext_object, ((void*)0));
    require_noerr(rval, finish);

    rval = kxld_kext_export_symbols(context->kext,
                                                          ((void*)0), ((void*)0),
                                    &context->defined_cxx_symbols_by_value);
    require_noerr(rval, finish);

    rval = KERN_SUCCESS;
finish:
    return rval;
}
