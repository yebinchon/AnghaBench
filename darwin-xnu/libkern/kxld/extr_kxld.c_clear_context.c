
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_7__ {scalar_t__ nitems; } ;
struct TYPE_6__ {int vtables_by_name; int obsolete_symbols_by_name; int defined_cxx_symbols_by_value; int defined_symbols_by_name; TYPE_2__ dependencies; TYPE_2__ objects; int * kext; } ;
typedef int KXLDObject ;
typedef int KXLDKext ;
typedef TYPE_1__ KXLDContext ;


 int check (TYPE_1__*) ;
 void* kxld_array_get_item (TYPE_2__*,scalar_t__) ;
 int kxld_array_reset (TYPE_2__*) ;
 int kxld_dict_clear (int *) ;
 int kxld_kext_clear (int *) ;
 int kxld_object_clear (int *) ;

__attribute__((used)) static void
clear_context(KXLDContext *context)
{
    KXLDObject * object = ((void*)0);
    KXLDKext * dep = ((void*)0);
    u_int i = 0;

    check(context);

    kxld_kext_clear(context->kext);

    for (i = 0; i < context->objects.nitems; ++i) {
        object = kxld_array_get_item(&context->objects, i);
        kxld_object_clear(object);
    }
    kxld_array_reset(&context->objects);

    for (i = 0; i < context->dependencies.nitems; ++i) {
        dep = kxld_array_get_item(&context->dependencies, i);
        kxld_kext_clear(dep);
    }
    kxld_array_reset(&context->dependencies);

    kxld_dict_clear(&context->defined_symbols_by_name);
    kxld_dict_clear(&context->defined_cxx_symbols_by_value);
    kxld_dict_clear(&context->obsolete_symbols_by_name);
    kxld_dict_clear(&context->vtables_by_name);
}
