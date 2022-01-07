
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;


 scalar_t__ QOS_OVERRIDE_MODE_FINE_GRAINED_OVERRIDE ;
 scalar_t__ QOS_OVERRIDE_MODE_FINE_GRAINED_OVERRIDE_BUT_SINGLE_MUTEX_OVERRIDE ;
 scalar_t__ QOS_OVERRIDE_MODE_IGNORE_OVERRIDE ;
 scalar_t__ QOS_OVERRIDE_MODE_OVERHANG_PEAK ;
 int THREAD_QOS_OVERRIDE_TYPE_PTHREAD_MUTEX ;
 int THREAD_QOS_OVERRIDE_TYPE_UNKNOWN ;
 int USER_ADDR_NULL ;
 scalar_t__ qos_override_mode ;

__attribute__((used)) static void canonicalize_resource_and_type(user_addr_t *resource, int *resource_type) {
 if (qos_override_mode == QOS_OVERRIDE_MODE_OVERHANG_PEAK || qos_override_mode == QOS_OVERRIDE_MODE_IGNORE_OVERRIDE) {

  *resource = USER_ADDR_NULL;
  *resource_type = THREAD_QOS_OVERRIDE_TYPE_UNKNOWN;
 } else if (qos_override_mode == QOS_OVERRIDE_MODE_FINE_GRAINED_OVERRIDE) {

 } else if (qos_override_mode == QOS_OVERRIDE_MODE_FINE_GRAINED_OVERRIDE_BUT_SINGLE_MUTEX_OVERRIDE) {

  if (*resource_type == THREAD_QOS_OVERRIDE_TYPE_PTHREAD_MUTEX) {
   *resource = USER_ADDR_NULL;
  }
 }
}
