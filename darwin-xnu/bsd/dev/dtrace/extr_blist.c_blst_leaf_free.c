
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_daddr_t ;
typedef int daddr_t ;
struct TYPE_4__ {int bmu_bitmap; } ;
struct TYPE_5__ {int bm_bighint; TYPE_1__ u; } ;
typedef TYPE_2__ blmeta_t ;


 int BLIST_BMAP_RADIX ;
 int panic (char*) ;

__attribute__((used)) static void
blst_leaf_free(blmeta_t *scan, daddr_t blk, int count)
{
 int n = blk & (BLIST_BMAP_RADIX - 1);
 u_daddr_t mask;

 mask = ((u_daddr_t)-1 << n) &
     ((u_daddr_t)-1 >> (BLIST_BMAP_RADIX - count - n));

 if (scan->u.bmu_bitmap & mask)
  panic("blst_radix_free: freeing free block");
 scan->u.bmu_bitmap |= mask;







 scan->bm_bighint = BLIST_BMAP_RADIX;
}
