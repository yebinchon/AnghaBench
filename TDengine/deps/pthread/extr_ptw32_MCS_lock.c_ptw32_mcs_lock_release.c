
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ptw32_mcs_lock_t ;
struct TYPE_3__ {int readyFlag; int next; int nextFlag; int * lock; } ;
typedef TYPE_1__ ptw32_mcs_local_node_t ;
typedef int PTW32_INTERLOCKED_SIZEPTR ;
typedef int PTW32_INTERLOCKED_SIZE ;
typedef int PTW32_INTERLOCKED_PVOID_PTR ;
typedef int PTW32_INTERLOCKED_PVOID ;


 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_PTR (int ,int ,int ) ;
 scalar_t__ PTW32_INTERLOCKED_EXCHANGE_ADD_SIZE (int ,int ) ;
 int ptw32_mcs_flag_set (int *) ;
 int ptw32_mcs_flag_wait (int *) ;

void
ptw32_mcs_lock_release (ptw32_mcs_local_node_t * node)
{
  ptw32_mcs_lock_t *lock = node->lock;
  ptw32_mcs_local_node_t *next =
    (ptw32_mcs_local_node_t *)
      PTW32_INTERLOCKED_EXCHANGE_ADD_SIZE((PTW32_INTERLOCKED_SIZEPTR)&node->next, (PTW32_INTERLOCKED_SIZE)0);

  if (0 == next)
    {


      if (node == (ptw32_mcs_local_node_t *)
   PTW32_INTERLOCKED_COMPARE_EXCHANGE_PTR((PTW32_INTERLOCKED_PVOID_PTR)lock,
       (PTW32_INTERLOCKED_PVOID)0,
       (PTW32_INTERLOCKED_PVOID)node))
 {

   return;
 }


      ptw32_mcs_flag_wait(&node->nextFlag);
      next = (ptw32_mcs_local_node_t *)
 PTW32_INTERLOCKED_EXCHANGE_ADD_SIZE((PTW32_INTERLOCKED_SIZEPTR)&node->next, (PTW32_INTERLOCKED_SIZE)0);
    }


  ptw32_mcs_flag_set(&next->readyFlag);
}
