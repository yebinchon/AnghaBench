
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 int BT_RC_TG_TAG ;
 int ESP_LOGI (int ,char*,int) ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 scalar_t__ s_volume ;
 int s_volume_lock ;

__attribute__((used)) static void volume_set_by_controller(uint8_t volume)
{
    ESP_LOGI(BT_RC_TG_TAG, "Volume is set by remote controller %d%%\n", (uint32_t)volume * 100 / 0x7f);
    _lock_acquire(&s_volume_lock);
    s_volume = volume;
    _lock_release(&s_volume_lock);
}
