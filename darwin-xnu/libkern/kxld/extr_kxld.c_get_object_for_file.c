
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int kern_return_t ;
struct TYPE_5__ {scalar_t__ nitems; } ;
struct TYPE_4__ {int flags; int cpusubtype; int cputype; int section_order; TYPE_2__ objects; } ;
typedef int KXLDObject ;
typedef TYPE_1__ KXLDContext ;


 int finish ;
 int * kxld_array_get_item (TYPE_2__*,scalar_t__) ;
 int * kxld_object_get_file (int *) ;
 int kxld_object_init_from_macho (int *,int *,int ,char const*,int ,int ,int ,int ) ;
 int require_noerr (int ,int ) ;

__attribute__((used)) static KXLDObject *
get_object_for_file(KXLDContext *context, u_char *file, u_long size,
    const char *name)
{
    KXLDObject *rval = ((void*)0);
    KXLDObject *object = ((void*)0);
    kern_return_t result = 0;
    u_int i = 0;

    for (i = 0; i < context->objects.nitems; ++i) {
        object = kxld_array_get_item(&context->objects, i);

        if (!kxld_object_get_file(object)) {
            result = kxld_object_init_from_macho(object, file, size, name,
                context->section_order, context->cputype, context->cpusubtype, context->flags);
            require_noerr(result, finish);

            rval = object;
            break;
        }

        if (kxld_object_get_file(object) == file) {
            rval = object;
            break;
        }
    }

finish:
    return rval;
}
