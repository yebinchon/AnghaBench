
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_daddr_t ;
typedef int daddr_t ;
struct TYPE_5__ {scalar_t__ bmu_avail; scalar_t__ bmu_bitmap; } ;
struct TYPE_6__ {int bm_bighint; TYPE_1__ u; } ;
typedef TYPE_2__ blmeta_t ;


 int BLIST_BMAP_RADIX ;
 int BLIST_META_RADIX_SHIFT ;
 int SWAPBLK_NONE ;
 int blst_leaf_alloc (TYPE_2__*,int,int) ;
 int panic (char*) ;

__attribute__((used)) static daddr_t
blst_meta_alloc(blmeta_t *scan, daddr_t blk, daddr_t count, daddr_t radix,
  int skip)
{
 int i;
 int next_skip = (skip >> BLIST_META_RADIX_SHIFT);

 if (scan->u.bmu_avail == 0) {



  scan->bm_bighint = count;
  return(SWAPBLK_NONE);
 }

 if (scan->u.bmu_avail == radix) {
  radix >>= BLIST_META_RADIX_SHIFT;





  for (i = 1; i <= skip; i += next_skip) {
   if (scan[i].bm_bighint == (daddr_t)-1)
    break;
   if (next_skip == 1) {
    scan[i].u.bmu_bitmap = (u_daddr_t)-1;
    scan[i].bm_bighint = BLIST_BMAP_RADIX;
   } else {
    scan[i].bm_bighint = radix;
    scan[i].u.bmu_avail = radix;
   }
  }
 } else {
  radix >>= BLIST_META_RADIX_SHIFT;
 }

 for (i = 1; i <= skip; i += next_skip) {
  if (count <= scan[i].bm_bighint) {



   daddr_t r;
   if (next_skip == 1)
    r = blst_leaf_alloc(&scan[i], blk, count);
   else
    r = blst_meta_alloc(&scan[i], blk, count,
          radix, next_skip - 1);
   if (r != SWAPBLK_NONE) {
    scan->u.bmu_avail -= count;
    if (scan->bm_bighint > scan->u.bmu_avail)
     scan->bm_bighint = scan->u.bmu_avail;
    return r;
   }
  } else if (scan[i].bm_bighint == (daddr_t)-1) {



   break;
  } else if (count > radix) {




   panic("blist_meta_alloc: allocation too large");
  }
  blk += radix;
 }




 if (scan->bm_bighint >= count)
  scan->bm_bighint = count - 1;
 return(SWAPBLK_NONE);
}
