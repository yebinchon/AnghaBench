
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_hf_outgoing_data_cb_t ;
typedef int esp_hf_incoming_data_cb_t ;
struct TYPE_2__ {int btc_hf_outgoing_data_cb; int btc_hf_incoming_data_cb; } ;


 TYPE_1__* hf_local_param ;

void btc_hf_reg_data_cb(esp_hf_incoming_data_cb_t recv, esp_hf_outgoing_data_cb_t send)
{
    hf_local_param[0].btc_hf_incoming_data_cb = recv;
    hf_local_param[0].btc_hf_outgoing_data_cb = send;
}
