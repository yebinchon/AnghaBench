
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int daddr_t ;
struct TYPE_4__ {scalar_t__ bmu_avail; scalar_t__ bmu_bitmap; } ;
struct TYPE_5__ {int bm_bighint; TYPE_1__ u; } ;
typedef TYPE_2__ blmeta_t ;


 int BLIST_BMAP_RADIX ;
 int BLIST_META_RADIX_SHIFT ;

__attribute__((used)) static daddr_t
blst_radix_init(blmeta_t *scan, daddr_t radix, int skip, daddr_t count)
{
 int i;
 int next_skip;
 daddr_t memindex = 0;





 if (radix == BLIST_BMAP_RADIX) {
  if (scan) {
   scan->bm_bighint = 0;
   scan->u.bmu_bitmap = 0;
  }
  return(memindex);
 }







 if (scan) {
  scan->bm_bighint = 0;
  scan->u.bmu_avail = 0;
 }

 radix >>= BLIST_META_RADIX_SHIFT;
 next_skip = (skip >> BLIST_META_RADIX_SHIFT);

 for (i = 1; i <= skip; i += next_skip) {
  if (count >= radix) {



   memindex = i + blst_radix_init(
       ((scan) ? &scan[i] : ((void*)0)),
       radix,
       next_skip - 1,
       radix
   );
   count -= radix;
  } else if (count > 0) {



   memindex = i + blst_radix_init(
       ((scan) ? &scan[i] : ((void*)0)),
       radix,
       next_skip - 1,
       count
   );
   count = 0;
  } else {



   if (scan)
    scan[i].bm_bighint = (daddr_t)-1;
   break;
  }
 }
 if (memindex < i)
  memindex = i;
 return(memindex);
}
