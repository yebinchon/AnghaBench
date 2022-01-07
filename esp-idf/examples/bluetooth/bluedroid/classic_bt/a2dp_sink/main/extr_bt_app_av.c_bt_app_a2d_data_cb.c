
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int BT_AV_TAG ;
 int ESP_LOGI (int ,char*,int) ;
 int s_pkt_cnt ;
 int write_ringbuf (int const*,int ) ;

void bt_app_a2d_data_cb(const uint8_t *data, uint32_t len)
{
    write_ringbuf(data, len);
    if (++s_pkt_cnt % 100 == 0) {
        ESP_LOGI(BT_AV_TAG, "Audio packet count %u", s_pkt_cnt);
    }
}
