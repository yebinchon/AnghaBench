
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ts; } ;
typedef TYPE_1__ Syncpoint ;



int ff_nut_sp_pts_cmp(const void *a, const void *b)
{
    const Syncpoint *va = a, *vb = b;
    return ((va->ts - vb->ts) >> 32) - ((vb->ts - va->ts) >> 32);
}
