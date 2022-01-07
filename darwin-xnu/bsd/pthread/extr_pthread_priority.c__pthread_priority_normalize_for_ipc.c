
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_priority_t ;


 int QOS_MIN_RELATIVE_PRIORITY ;
 int _PTHREAD_PRIORITY_PRIORITY_MASK ;
 int _PTHREAD_PRIORITY_QOS_CLASS_MASK ;
 scalar_t__ _pthread_priority_has_qos (int) ;
 int _pthread_priority_relpri (int) ;
 int _pthread_unspecified_priority () ;

pthread_priority_t
_pthread_priority_normalize_for_ipc(pthread_priority_t pp)
{
 if (_pthread_priority_has_qos(pp)) {
  int relpri = _pthread_priority_relpri(pp);
  if (relpri > 0 || relpri < QOS_MIN_RELATIVE_PRIORITY) {
   pp |= _PTHREAD_PRIORITY_PRIORITY_MASK;
  }
  return pp & (_PTHREAD_PRIORITY_QOS_CLASS_MASK |
    _PTHREAD_PRIORITY_PRIORITY_MASK);
 }
 return _pthread_unspecified_priority();
}
