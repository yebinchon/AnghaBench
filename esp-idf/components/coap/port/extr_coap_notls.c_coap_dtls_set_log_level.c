
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dtls_log_level ;

void
coap_dtls_set_log_level(int level) {
  dtls_log_level = level;
}
