
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* ipc_kmsg_t ;
typedef TYPE_2__* ipc_kmsg_queue_t ;
struct TYPE_10__ {TYPE_1__* ikmq_base; } ;
struct TYPE_9__ {scalar_t__ ikm_next; scalar_t__ ikm_prev; } ;


 scalar_t__ IKM_BOGUS ;
 TYPE_1__* IKM_NULL ;
 scalar_t__ __improbable (int) ;
 int assert (int) ;
 int panic (char*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

void
ipc_kmsg_rmqueue(
 ipc_kmsg_queue_t queue,
 ipc_kmsg_t kmsg)
{
 ipc_kmsg_t next, prev;

 assert(queue->ikmq_base != IKM_NULL);

 next = kmsg->ikm_next;
 prev = kmsg->ikm_prev;

 if (next == kmsg) {
  assert(prev == kmsg);
  assert(queue->ikmq_base == kmsg);

  queue->ikmq_base = IKM_NULL;
 } else {
  if (__improbable(next->ikm_prev != kmsg || prev->ikm_next != kmsg)) {
   panic("ipc_kmsg_rmqueue: inconsistent prev/next pointers. "
    "(prev->next: %p, next->prev: %p, kmsg: %p)",
    prev->ikm_next, next->ikm_prev, kmsg);
  }

  if (queue->ikmq_base == kmsg)
   queue->ikmq_base = next;

  next->ikm_prev = prev;
  prev->ikm_next = next;
 }

 assert((kmsg->ikm_next = IKM_BOGUS) == IKM_BOGUS);
 assert((kmsg->ikm_prev = IKM_BOGUS) == IKM_BOGUS);
}
