
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ptw32_mcs_lock_t ;
struct TYPE_3__ {scalar_t__ readyFlag; scalar_t__ nextFlag; struct TYPE_3__* next; int * lock; } ;
typedef TYPE_1__ ptw32_mcs_local_node_t ;
typedef int PTW32_INTERLOCKED_PVOID_PTR ;
typedef int PTW32_INTERLOCKED_PVOID ;


 scalar_t__ PTW32_INTERLOCKED_EXCHANGE_PTR (int ,int ) ;
 int ptw32_mcs_flag_set (scalar_t__*) ;
 int ptw32_mcs_flag_wait (scalar_t__*) ;

void
ptw32_mcs_lock_acquire (ptw32_mcs_lock_t * lock, ptw32_mcs_local_node_t * node)
{
  ptw32_mcs_local_node_t *pred;

  node->lock = lock;
  node->nextFlag = 0;
  node->readyFlag = 0;
  node->next = 0;


  pred = (ptw32_mcs_local_node_t *)PTW32_INTERLOCKED_EXCHANGE_PTR((PTW32_INTERLOCKED_PVOID_PTR)lock,
          (PTW32_INTERLOCKED_PVOID)node);

  if (0 != pred)
    {

      pred->next = node;
      ptw32_mcs_flag_set(&pred->nextFlag);
      ptw32_mcs_flag_wait(&node->readyFlag);
    }
}
