
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* c_segment_t ;
struct TYPE_2__ {int c_generation_id; } ;


 scalar_t__ FALSE ;
 int HIBLOG (char*,int ,int ) ;
 scalar_t__ TRUE ;
 int c_age_list_head ;
 int c_list_lock ;
 scalar_t__ fastwake_recording_in_progress ;
 int first_c_segment_to_warm_generation_id ;
 int last_c_segment_to_warm_generation_id ;
 int lck_mtx_lock_spin_always (int ) ;
 int lck_mtx_unlock_always (int ) ;
 int queue_empty (int *) ;
 scalar_t__ queue_last (int *) ;

void
vm_compressor_record_warmup_end(void)
{
 c_segment_t c_seg;

 lck_mtx_lock_spin_always(c_list_lock);

 if (fastwake_recording_in_progress == TRUE) {

  if (!queue_empty(&c_age_list_head)) {

   c_seg = (c_segment_t)queue_last(&c_age_list_head);

   last_c_segment_to_warm_generation_id = c_seg->c_generation_id;
  } else
   last_c_segment_to_warm_generation_id = first_c_segment_to_warm_generation_id;

  fastwake_recording_in_progress = FALSE;

  HIBLOG("vm_compressor_record_warmup (%qd - %qd)\n", first_c_segment_to_warm_generation_id, last_c_segment_to_warm_generation_id);
 }
 lck_mtx_unlock_always(c_list_lock);
}
