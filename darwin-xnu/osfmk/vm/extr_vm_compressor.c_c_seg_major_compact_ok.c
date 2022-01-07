
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* c_segment_t ;
typedef int boolean_t ;
struct TYPE_6__ {int asked_permission; } ;
struct TYPE_5__ {scalar_t__ c_bytes_used; scalar_t__ c_nextoffset; scalar_t__ c_nextslot; } ;


 scalar_t__ C_MAJOR_COMPACTION_SIZE_APPROPRIATE ;
 scalar_t__ C_SEG_OFF_LIMIT ;
 scalar_t__ C_SLOT_MAX_INDEX ;
 int FALSE ;
 int TRUE ;
 TYPE_2__ c_seg_major_compact_stats ;

boolean_t
c_seg_major_compact_ok(
 c_segment_t c_seg_dst,
 c_segment_t c_seg_src)
{

 c_seg_major_compact_stats.asked_permission++;

 if (c_seg_src->c_bytes_used >= C_MAJOR_COMPACTION_SIZE_APPROPRIATE &&
     c_seg_dst->c_bytes_used >= C_MAJOR_COMPACTION_SIZE_APPROPRIATE)
  return (FALSE);

 if (c_seg_dst->c_nextoffset >= C_SEG_OFF_LIMIT || c_seg_dst->c_nextslot >= C_SLOT_MAX_INDEX) {



  return (FALSE);
 }

 return (TRUE);
}
