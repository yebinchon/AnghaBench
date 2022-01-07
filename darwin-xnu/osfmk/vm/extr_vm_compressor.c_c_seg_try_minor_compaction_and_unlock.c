
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* c_segment_t ;
struct TYPE_5__ {int c_lock; int c_on_minorcompact_q; } ;


 int C_SEG_BUSY (TYPE_1__*) ;
 int FALSE ;
 int TRUE ;
 int assert (int ) ;
 int c_list_lock ;
 int c_seg_do_minor_compaction_and_unlock (TYPE_1__*,int ,int ,int ) ;
 int lck_mtx_try_lock_spin_always (int ) ;
 int lck_mtx_unlock_always (int *) ;
 int try_minor_compaction_failed ;
 int try_minor_compaction_succeeded ;

void
c_seg_try_minor_compaction_and_unlock(c_segment_t c_seg)
{

 assert(c_seg->c_on_minorcompact_q);







 if ( !lck_mtx_try_lock_spin_always(c_list_lock)) {



  try_minor_compaction_failed++;

  lck_mtx_unlock_always(&c_seg->c_lock);
 } else {
  try_minor_compaction_succeeded++;

  C_SEG_BUSY(c_seg);
  c_seg_do_minor_compaction_and_unlock(c_seg, TRUE, FALSE, FALSE);
 }
}
