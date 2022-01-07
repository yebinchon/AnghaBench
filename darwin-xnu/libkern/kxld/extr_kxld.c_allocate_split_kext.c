
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_5__ {int * linkedKext; int linkedKextSize; scalar_t__ vmaddr_TEXT; scalar_t__ vmaddr_LINKEDIT; } ;
typedef TYPE_1__ splitKextLinkInfo ;
typedef int kern_return_t ;
struct TYPE_6__ {int kext; } ;
typedef TYPE_2__ KXLDContext ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int SEG_LINKEDIT ;
 int bzero (int *,int ) ;
 int finish ;
 scalar_t__ isSplitKext ;
 int kxld_kext_get_vmsize (int ,int *,int *) ;
 int kxld_kext_get_vmsize_for_seg_by_name (int ,int ,int *) ;
 int * kxld_page_alloc_untracked (int ) ;
 int require (int *,int ) ;

__attribute__((used)) static kern_return_t
allocate_split_kext(KXLDContext *context, splitKextLinkInfo * link_info)
{
    kern_return_t rval = KERN_FAILURE;
    u_long vmsize = 0;
    u_long header_size = 0;
    u_char * linked_object = ((void*)0);

    kxld_kext_get_vmsize(context->kext, &header_size, &vmsize);

    if (isSplitKext) {

        kxld_kext_get_vmsize_for_seg_by_name(context->kext, SEG_LINKEDIT, &vmsize);

        vmsize += (link_info->vmaddr_LINKEDIT - link_info->vmaddr_TEXT);
    }
    link_info->linkedKextSize = vmsize;

    linked_object = kxld_page_alloc_untracked(link_info->linkedKextSize);
    require(linked_object, finish);
    link_info->linkedKext = linked_object;

    bzero(linked_object, vmsize);
    rval = KERN_SUCCESS;

finish:
    return rval;
}
