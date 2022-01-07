
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_daddr_t ;
typedef int daddr_t ;
struct TYPE_4__ {int bmu_bitmap; scalar_t__ bmu_avail; } ;
struct TYPE_5__ {int bm_bighint; TYPE_1__ u; } ;
typedef TYPE_2__ blmeta_t ;
typedef int blist_t ;


 int BLIST_BMAP_RADIX ;
 int BLIST_META_RADIX_SHIFT ;
 int blist_free (int ,int,int) ;

__attribute__((used)) static void blst_copy(blmeta_t *scan, daddr_t blk, daddr_t radix,
        daddr_t skip, blist_t dest, daddr_t count)
{
 int next_skip;
 int i;





 if (radix == BLIST_BMAP_RADIX) {
  u_daddr_t v = scan->u.bmu_bitmap;

  if (v == (u_daddr_t)-1) {
   blist_free(dest, blk, count);
  } else if (v != 0) {

   int i;

   for (i = 0; i < BLIST_BMAP_RADIX && i < count; ++i)
    if (v & (1 << i))
     blist_free(dest, blk + i, 1);







  }
  return;
 }
 if (scan->u.bmu_avail == 0)
  return;
 if (scan->u.bmu_avail == radix) {



  if (count < radix)
   blist_free(dest, blk, count);
  else
   blist_free(dest, blk, radix);
  return;
 }

 radix >>= BLIST_META_RADIX_SHIFT;
 next_skip = (skip >> BLIST_META_RADIX_SHIFT);

 for (i = 1; count && i <= skip; i += next_skip) {
  if (scan[i].bm_bighint == (daddr_t)-1)
   break;

  if (count >= radix) {
   blst_copy(
       &scan[i],
       blk,
       radix,
       next_skip - 1,
       dest,
       radix
   );
   count -= radix;
  } else {
   if (count) {
    blst_copy(
        &scan[i],
        blk,
        radix,
        next_skip - 1,
        dest,
        count
    );
   }
   count = 0;
  }
  blk += radix;
 }
}
