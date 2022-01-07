
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; } ;
typedef TYPE_1__ Syncpoint ;



int ff_nut_sp_pos_cmp(const void *a, const void *b)
{
    const Syncpoint *va = a, *vb = b;
    return ((va->pos - vb->pos) >> 32) - ((vb->pos - va->pos) >> 32);
}
