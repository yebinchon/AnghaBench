
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ volume; } ;
typedef TYPE_1__ esp_avrc_rn_param_t ;


 int BT_RC_TG_TAG ;
 int ESP_AVRC_RN_RSP_CHANGED ;
 int ESP_AVRC_RN_VOLUME_CHANGE ;
 int ESP_LOGI (int ,char*,int) ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 int esp_avrc_tg_send_rn_rsp (int ,int ,TYPE_1__*) ;
 scalar_t__ s_volume ;
 int s_volume_lock ;
 int s_volume_notify ;

__attribute__((used)) static void volume_set_by_local_host(uint8_t volume)
{
    ESP_LOGI(BT_RC_TG_TAG, "Volume is set locally to: %d%%", (uint32_t)volume * 100 / 0x7f);
    _lock_acquire(&s_volume_lock);
    s_volume = volume;
    _lock_release(&s_volume_lock);

    if (s_volume_notify) {
        esp_avrc_rn_param_t rn_param;
        rn_param.volume = s_volume;
        esp_avrc_tg_send_rn_rsp(ESP_AVRC_RN_VOLUME_CHANGE, ESP_AVRC_RN_RSP_CHANGED, &rn_param);
        s_volume_notify = 0;
    }
}
