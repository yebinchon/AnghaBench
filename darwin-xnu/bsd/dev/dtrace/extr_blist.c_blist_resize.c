
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ daddr_t ;
typedef TYPE_1__* blist_t ;
struct TYPE_7__ {scalar_t__ bl_blocks; int bl_skip; int bl_radix; int bl_root; } ;


 TYPE_1__* blist_create (scalar_t__) ;
 int blist_destroy (TYPE_1__*) ;
 int blist_free (TYPE_1__*,scalar_t__,scalar_t__) ;
 int blst_copy (int ,int ,int ,int ,TYPE_1__*,scalar_t__) ;

void
blist_resize(blist_t *pbl, daddr_t count, int freenew)
{
    blist_t newbl = blist_create(count);
    blist_t save = *pbl;

    *pbl = newbl;
    if (count > save->bl_blocks)
     count = save->bl_blocks;
    blst_copy(save->bl_root, 0, save->bl_radix, save->bl_skip, newbl, count);




    if (freenew && count < newbl->bl_blocks)
     blist_free(newbl, count, newbl->bl_blocks - count);
    blist_destroy(save);
}
