
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int coap_log_t ;


 int maxlog ;

coap_log_t
coap_get_log_level(void) {
  return maxlog;
}
