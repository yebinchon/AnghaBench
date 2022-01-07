
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_a2d_sink_data_cb_t ;


 int bt_aa_snk_data_cb ;

void btc_a2dp_sink_reg_data_cb(esp_a2d_sink_data_cb_t callback)
{

    bt_aa_snk_data_cb = callback;
}
