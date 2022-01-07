
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ qos_tier; scalar_t__ tier_importance; } ;
typedef TYPE_1__ thread_qos_policy_data_t ;
typedef int pthread_priority_t ;


 scalar_t__ THREAD_QOS_MIN_TIER_IMPORTANCE ;
 scalar_t__ THREAD_QOS_UNSPECIFIED ;
 scalar_t__ _pthread_priority_relpri (int ) ;
 scalar_t__ _pthread_priority_thread_qos (int ) ;

__attribute__((used)) static bool
_pthread_priority_to_policy(pthread_priority_t priority,
  thread_qos_policy_data_t *data)
{
 data->qos_tier = _pthread_priority_thread_qos(priority);
 data->tier_importance = _pthread_priority_relpri(priority);
 if (data->qos_tier == THREAD_QOS_UNSPECIFIED || data->tier_importance > 0 ||
   data->tier_importance < THREAD_QOS_MIN_TIER_IMPORTANCE) {
  return 0;
 }
 return 1;
}
