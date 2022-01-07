
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_qos_t ;




__attribute__((used)) static inline int
_wq_bucket(thread_qos_t qos)
{


 switch (qos) {
 case 128:
  return 0;
 default:
  return qos - 2;
 }
}
