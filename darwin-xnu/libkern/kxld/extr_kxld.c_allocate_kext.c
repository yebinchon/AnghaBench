
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_char ;
typedef int kxld_addr_t ;
struct TYPE_3__ {int (* allocate_callback ) (scalar_t__,int*,void*) ;int kext; } ;
typedef TYPE_1__ KXLDContext ;
typedef int KXLDAllocateFlags ;


 int bzero (int *,scalar_t__) ;
 int finish ;
 int kKxldAllocateWritable ;
 int kKxldLogErr ;
 int kKxldLogLinking ;
 int kxld_get_effective_page_size () ;
 int kxld_kext_get_vmsize (int ,scalar_t__*,scalar_t__*) ;
 int kxld_kext_set_linked_object_size (int ,scalar_t__) ;
 int kxld_log (int ,int ,char*,void*) ;
 int * kxld_page_alloc_untracked (scalar_t__) ;
 int require (int *,int ) ;
 int require_action (int,int ,int ) ;
 int stub1 (scalar_t__,int*,void*) ;

__attribute__((used)) static u_char *
allocate_kext(KXLDContext *context,
              void *callback_data,
              kxld_addr_t *vmaddr_out,
              u_long *vmsize_out,
              u_char **linked_object_alloc_out)
{
    KXLDAllocateFlags flags = 0;
    kxld_addr_t vmaddr = 0;
    u_long vmsize = 0;
    u_long header_size = 0;
    u_char * linked_object = ((void*)0);

    *linked_object_alloc_out = ((void*)0);

    kxld_kext_get_vmsize(context->kext, &header_size, &vmsize);

    vmaddr = context->allocate_callback(vmsize, &flags, callback_data);
    require_action(!(vmaddr & (kxld_get_effective_page_size()-1)), finish,
                   kxld_log(kKxldLogLinking, kKxldLogErr,
                            "Load address %p is not page-aligned.",
                            (void *) (uintptr_t) vmaddr));

    if (flags & kKxldAllocateWritable) {
        linked_object = (u_char *) (u_long) vmaddr;
    } else {
        linked_object = kxld_page_alloc_untracked(vmsize);
        require(linked_object, finish);

        *linked_object_alloc_out = linked_object;
    }

    kxld_kext_set_linked_object_size(context->kext, vmsize);






    bzero(linked_object, vmsize);
    *vmaddr_out = vmaddr;
    *vmsize_out = vmsize;

finish:
    return linked_object;
}
