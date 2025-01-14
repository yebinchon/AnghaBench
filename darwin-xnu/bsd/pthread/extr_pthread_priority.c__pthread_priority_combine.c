
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_qos_t ;
typedef int pthread_priority_t ;


 int _PTHREAD_PRIORITY_EVENT_MANAGER_FLAG ;
 int _PTHREAD_PRIORITY_FALLBACK_FLAG ;
 int _PTHREAD_PRIORITY_OVERCOMMIT_FLAG ;
 int _pthread_priority_make_from_thread_qos (scalar_t__,int ,int) ;
 scalar_t__ _pthread_priority_thread_qos (int) ;

pthread_priority_t
_pthread_priority_combine(pthread_priority_t base_pp, thread_qos_t qos)
{
 if (base_pp & _PTHREAD_PRIORITY_EVENT_MANAGER_FLAG) {
  return _PTHREAD_PRIORITY_EVENT_MANAGER_FLAG;
 }

 if (base_pp & _PTHREAD_PRIORITY_FALLBACK_FLAG) {
  if (!qos) {
   return base_pp;
  }
 } else if (qos < _pthread_priority_thread_qos(base_pp)) {
  return base_pp;
 }

 return _pthread_priority_make_from_thread_qos(qos, 0,
   base_pp & _PTHREAD_PRIORITY_OVERCOMMIT_FLAG);
}
