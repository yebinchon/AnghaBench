
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int kxld_size_t ;
struct TYPE_4__ {int vmsize; } ;
typedef TYPE_1__ KXLDSeg ;


 int check (TYPE_1__ const*) ;

kxld_size_t
kxld_seg_get_vmsize(const KXLDSeg *seg)
{
    check(seg);

    return seg->vmsize;
}
