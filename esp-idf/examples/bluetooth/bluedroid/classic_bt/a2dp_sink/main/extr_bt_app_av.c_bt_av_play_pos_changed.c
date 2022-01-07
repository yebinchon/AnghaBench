
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APP_RC_CT_TL_RN_PLAY_POS_CHANGE ;
 int ESP_AVRC_BIT_MASK_OP_TEST ;
 int ESP_AVRC_RN_PLAY_POS_CHANGED ;
 int esp_avrc_ct_send_register_notification_cmd (int ,int ,int) ;
 scalar_t__ esp_avrc_rn_evt_bit_mask_operation (int ,int *,int ) ;
 int s_avrc_peer_rn_cap ;

__attribute__((used)) static void bt_av_play_pos_changed(void)
{
    if (esp_avrc_rn_evt_bit_mask_operation(ESP_AVRC_BIT_MASK_OP_TEST, &s_avrc_peer_rn_cap,
                                           ESP_AVRC_RN_PLAY_POS_CHANGED)) {
        esp_avrc_ct_send_register_notification_cmd(APP_RC_CT_TL_RN_PLAY_POS_CHANGE, ESP_AVRC_RN_PLAY_POS_CHANGED, 10);
    }
}
