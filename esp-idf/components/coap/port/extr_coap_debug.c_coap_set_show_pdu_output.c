
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int use_fprintf_for_show_pdu ;

void
coap_set_show_pdu_output(int use_fprintf) {
  use_fprintf_for_show_pdu = use_fprintf;
}
