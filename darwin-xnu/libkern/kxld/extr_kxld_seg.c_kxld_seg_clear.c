
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sects; scalar_t__ initprot; scalar_t__ maxprot; scalar_t__ flags; scalar_t__ vmsize; scalar_t__ link_addr; scalar_t__ base_addr; int segname; } ;
typedef TYPE_1__ KXLDSeg ;


 int bzero (int ,int) ;
 int check (TYPE_1__*) ;
 int kxld_array_clear (int *) ;

void
kxld_seg_clear(KXLDSeg *seg)
{
    check(seg);

    bzero(seg->segname, sizeof(seg->segname));
    seg->base_addr = 0;
    seg->link_addr = 0;
    seg->vmsize = 0;
    seg->flags = 0;
    seg->maxprot = 0;
    seg->initprot = 0;




    kxld_array_clear(&seg->sects);
}
