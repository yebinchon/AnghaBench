
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int coap_log_t ;


 int maxlog ;

void
coap_set_log_level(coap_log_t level) {
  maxlog = level;
}
