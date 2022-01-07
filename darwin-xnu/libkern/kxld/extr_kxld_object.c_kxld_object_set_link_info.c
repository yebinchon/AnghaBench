
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int vmaddr_LINKEDIT; int vmaddr_LLVM_COV; int vmaddr_DATA_CONST; int vmaddr_DATA; int vmaddr_TEXT_EXEC; int vmaddr_TEXT; } ;
struct TYPE_8__ {int vmaddr_LINKEDIT; TYPE_1__ split_info; int vmaddr_LLVM_COV; int vmaddr_DATA_CONST; int vmaddr_DATA; int vmaddr_TEXT_EXEC; int vmaddr_TEXT; } ;
typedef TYPE_2__ splitKextLinkInfo ;
typedef TYPE_2__ KXLDObject ;


 int check (TYPE_2__*) ;

void
kxld_object_set_link_info(KXLDObject *object, splitKextLinkInfo *link_info)
{
    check(object);
    check(link_info);

    object->split_info.vmaddr_TEXT = link_info->vmaddr_TEXT;
    object->split_info.vmaddr_TEXT_EXEC = link_info->vmaddr_TEXT_EXEC;
    object->split_info.vmaddr_DATA = link_info->vmaddr_DATA;
    object->split_info.vmaddr_DATA_CONST = link_info->vmaddr_DATA_CONST;
    object->split_info.vmaddr_LLVM_COV = link_info->vmaddr_LLVM_COV;
    object->split_info.vmaddr_LINKEDIT = link_info->vmaddr_LINKEDIT;

    return;
}
