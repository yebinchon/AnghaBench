
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* vm_page_iterate_proc ) (int *,unsigned int,TYPE_1__*) ;
typedef TYPE_1__* vm_object_t ;
typedef int queue_entry_t ;
typedef TYPE_3__* purgeable_q_t ;
typedef int mach_memory_info_t ;
struct TYPE_7__ {int * objq; } ;
struct TYPE_6__ {int objq; } ;


 int queue_end (int *,int ) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int *) ;

__attribute__((used)) static void
vm_page_iterate_purgeable_objects(mach_memory_info_t * info, unsigned int num_info,
      vm_page_iterate_proc proc, purgeable_q_t queue,
      int group)
{
    vm_object_t object;

    for (object = (vm_object_t) queue_first(&queue->objq[group]);
  !queue_end(&queue->objq[group], (queue_entry_t) object);
  object = (vm_object_t) queue_next(&object->objq))
    {
  proc(info, num_info, object);
    }
}
