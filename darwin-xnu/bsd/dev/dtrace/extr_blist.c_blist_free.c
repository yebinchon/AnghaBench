
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ daddr_t ;
typedef TYPE_1__* blist_t ;
struct TYPE_3__ {scalar_t__ bl_radix; int bl_free; int bl_skip; int bl_root; } ;


 scalar_t__ BLIST_BMAP_RADIX ;
 int blst_leaf_free (int ,scalar_t__,scalar_t__) ;
 int blst_meta_free (int ,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;

void
blist_free(blist_t bl, daddr_t blkno, daddr_t count)
{
 if (bl) {
  if (bl->bl_radix == BLIST_BMAP_RADIX)
   blst_leaf_free(bl->bl_root, blkno, count);
  else
   blst_meta_free(bl->bl_root, blkno, count,
           bl->bl_radix, bl->bl_skip, 0);
  bl->bl_free += count;
 }
}
