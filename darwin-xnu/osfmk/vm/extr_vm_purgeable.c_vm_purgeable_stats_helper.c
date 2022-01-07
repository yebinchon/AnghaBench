
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ size; scalar_t__ count; } ;
typedef TYPE_1__ vm_purgeable_stat_t ;
typedef TYPE_2__* vm_object_t ;
typedef scalar_t__ task_t ;
typedef int queue_entry_t ;
typedef TYPE_3__* purgeable_q_t ;
struct TYPE_9__ {int * objq; } ;
struct TYPE_8__ {int resident_page_count; int objq; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PAGE_SIZE ;
 scalar_t__ VM_OBJECT_OWNER (TYPE_2__*) ;
 int queue_end (int *,int ) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int *) ;
 int vm_purgeable_queue_lock ;

void
vm_purgeable_stats_helper(vm_purgeable_stat_t *stat, purgeable_q_t queue, int group, task_t target_task)
{
 LCK_MTX_ASSERT(&vm_purgeable_queue_lock, LCK_MTX_ASSERT_OWNED);

 stat->count = stat->size = 0;
 vm_object_t object;
 for (object = (vm_object_t) queue_first(&queue->objq[group]);
      !queue_end(&queue->objq[group], (queue_entry_t) object);
      object = (vm_object_t) queue_next(&object->objq)) {
  if (!target_task || VM_OBJECT_OWNER(object) == target_task) {
   stat->count++;
   stat->size += (object->resident_page_count * PAGE_SIZE);
  }
 }
 return;
}
