
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int coap_log_handler_t ;


 int log_handler ;

void coap_set_log_handler(coap_log_handler_t handler) {
  log_handler = handler;
}
