
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ mach_msg_priority_t ;
typedef TYPE_1__* ipc_kmsg_t ;
typedef TYPE_2__* ipc_kmsg_queue_t ;
typedef int boolean_t ;
struct TYPE_6__ {TYPE_1__* ikmq_base; } ;
struct TYPE_5__ {scalar_t__ ikm_qos_override; struct TYPE_5__* ikm_prev; } ;


 int FALSE ;
 int TRUE ;

boolean_t
ipc_kmsg_override_qos(
 ipc_kmsg_queue_t queue,
 ipc_kmsg_t kmsg,
 mach_msg_priority_t override)
{
 ipc_kmsg_t first = queue->ikmq_base;
 ipc_kmsg_t cur = kmsg;


 while (override > cur->ikm_qos_override) {
  cur->ikm_qos_override = override;
  if (cur == first)
   return TRUE;
   cur = cur->ikm_prev;
 }
 return FALSE;
}
