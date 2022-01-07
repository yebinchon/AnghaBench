
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ boolean_t ;
struct TYPE_3__ {void* maxprot; void* initprot; int segname; } ;
typedef TYPE_1__ KXLDSeg ;


 void* DATA_SEG_PROT ;
 int SEG_TEXT ;
 void* TEXT_SEG_PROT ;
 void* VM_PROT_ALL ;
 int strncmp (int ,int ,int) ;

void
kxld_seg_set_vm_protections(KXLDSeg *seg, boolean_t strict_protections)
{
    if (strict_protections) {
        if (!strncmp(seg->segname, SEG_TEXT, sizeof(seg->segname))) {
            seg->initprot = TEXT_SEG_PROT;
            seg->maxprot = TEXT_SEG_PROT;
        } else {
            seg->initprot = DATA_SEG_PROT;
            seg->maxprot = DATA_SEG_PROT;
        }
    } else {
        seg->initprot = VM_PROT_ALL;
        seg->maxprot = VM_PROT_ALL;
    }
}
