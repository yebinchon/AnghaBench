
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t thread_qos_t ;
struct TYPE_2__ {int * qos_pri; } ;


 size_t THREAD_QOS_LAST ;
 int assert (int) ;
 TYPE_1__ thread_qos_policy_params ;

uint8_t
thread_workq_pri_for_qos(thread_qos_t qos)
{
 assert(qos < THREAD_QOS_LAST);
 return (uint8_t)thread_qos_policy_params.qos_pri[qos];
}
