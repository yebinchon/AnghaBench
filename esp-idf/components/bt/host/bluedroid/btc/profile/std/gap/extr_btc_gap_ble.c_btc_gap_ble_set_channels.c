
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_gap_ble_channels ;


 int BTA_DmBleSetChannels (int ,int ) ;
 int btc_gap_ble_set_channels_cmpl_callback ;

__attribute__((used)) static void btc_gap_ble_set_channels(esp_gap_ble_channels channels)
{
    BTA_DmBleSetChannels(channels, btc_gap_ble_set_channels_cmpl_callback);
}
