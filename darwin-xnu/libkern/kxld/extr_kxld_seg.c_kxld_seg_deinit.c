
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sects; } ;
typedef TYPE_1__ KXLDSeg ;


 int bzero (TYPE_1__*,int) ;
 int check (TYPE_1__*) ;
 int kxld_array_deinit (int *) ;

void
kxld_seg_deinit(KXLDSeg *seg)
{
    check(seg);

    kxld_array_deinit(&seg->sects);
    bzero(seg, sizeof(*seg));
}
