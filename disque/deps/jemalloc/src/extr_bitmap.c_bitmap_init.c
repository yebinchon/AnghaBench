
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t bitmap_t ;
struct TYPE_5__ {size_t nlevels; size_t nbits; TYPE_1__* levels; } ;
typedef TYPE_2__ bitmap_info_t ;
struct TYPE_4__ {int group_offset; } ;


 size_t BITMAP_GROUP_NBITS ;
 size_t BITMAP_GROUP_NBITS_MASK ;
 int LG_SIZEOF_BITMAP ;
 int memset (size_t*,int,int) ;

void
bitmap_init(bitmap_t *bitmap, const bitmap_info_t *binfo)
{
 size_t extra;
 unsigned i;
 memset(bitmap, 0xffU, binfo->levels[binfo->nlevels].group_offset <<
     LG_SIZEOF_BITMAP);
 extra = (BITMAP_GROUP_NBITS - (binfo->nbits & BITMAP_GROUP_NBITS_MASK))
     & BITMAP_GROUP_NBITS_MASK;
 if (extra != 0)
  bitmap[binfo->levels[1].group_offset - 1] >>= extra;
 for (i = 1; i < binfo->nlevels; i++) {
  size_t group_count = binfo->levels[i].group_offset -
      binfo->levels[i-1].group_offset;
  extra = (BITMAP_GROUP_NBITS - (group_count &
      BITMAP_GROUP_NBITS_MASK)) & BITMAP_GROUP_NBITS_MASK;
  if (extra != 0)
   bitmap[binfo->levels[i+1].group_offset - 1] >>= extra;
 }
}
