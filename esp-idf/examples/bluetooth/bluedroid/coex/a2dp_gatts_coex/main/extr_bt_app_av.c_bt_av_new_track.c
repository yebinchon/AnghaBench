
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int APP_RC_CT_TL_GET_META_DATA ;
 int APP_RC_CT_TL_RN_TRACK_CHANGE ;
 int ESP_AVRC_BIT_MASK_OP_TEST ;
 int ESP_AVRC_MD_ATTR_ALBUM ;
 int ESP_AVRC_MD_ATTR_ARTIST ;
 int ESP_AVRC_MD_ATTR_GENRE ;
 int ESP_AVRC_MD_ATTR_TITLE ;
 int ESP_AVRC_RN_TRACK_CHANGE ;
 int esp_avrc_ct_send_metadata_cmd (int ,int) ;
 int esp_avrc_ct_send_register_notification_cmd (int ,int ,int ) ;
 scalar_t__ esp_avrc_rn_evt_bit_mask_operation (int ,int *,int ) ;
 int s_avrc_peer_rn_cap ;

__attribute__((used)) static void bt_av_new_track(void)
{

    uint8_t attr_mask = ESP_AVRC_MD_ATTR_TITLE | ESP_AVRC_MD_ATTR_ARTIST | ESP_AVRC_MD_ATTR_ALBUM | ESP_AVRC_MD_ATTR_GENRE;
    esp_avrc_ct_send_metadata_cmd(APP_RC_CT_TL_GET_META_DATA, attr_mask);


    if (esp_avrc_rn_evt_bit_mask_operation(ESP_AVRC_BIT_MASK_OP_TEST, &s_avrc_peer_rn_cap,
                                           ESP_AVRC_RN_TRACK_CHANGE)) {
        esp_avrc_ct_send_register_notification_cmd(APP_RC_CT_TL_RN_TRACK_CHANGE, ESP_AVRC_RN_TRACK_CHANGE, 0);
    }
}
