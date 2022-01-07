
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* c_segment_t ;
struct TYPE_4__ {int c_lock; int c_busy; } ;


 int assert (int ) ;
 int * c_list_lock ;
 int c_seg_free_locked (TYPE_1__*) ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock_always (int *) ;

void
c_seg_free(c_segment_t c_seg)
{
 assert(c_seg->c_busy);

 lck_mtx_unlock_always(&c_seg->c_lock);
 lck_mtx_lock_spin_always(c_list_lock);
 lck_mtx_lock_spin_always(&c_seg->c_lock);

 c_seg_free_locked(c_seg);
}
