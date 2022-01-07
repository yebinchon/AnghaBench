
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int ESP_BT_EIR_TYPE_CMPL_LOCAL_NAME ;
 int ESP_BT_EIR_TYPE_SHORT_LOCAL_NAME ;
 size_t ESP_BT_GAP_MAX_BDNAME_LEN ;
 size_t* esp_bt_gap_resolve_eir_data (size_t*,int ,size_t*) ;
 int memcpy (size_t*,size_t*,size_t) ;

__attribute__((used)) static bool get_name_from_eir(uint8_t *eir, uint8_t *bdname, uint8_t *bdname_len)
{
    uint8_t *rmt_bdname = ((void*)0);
    uint8_t rmt_bdname_len = 0;

    if (!eir) {
        return 0;
    }

    rmt_bdname = esp_bt_gap_resolve_eir_data(eir, ESP_BT_EIR_TYPE_CMPL_LOCAL_NAME, &rmt_bdname_len);
    if (!rmt_bdname) {
        rmt_bdname = esp_bt_gap_resolve_eir_data(eir, ESP_BT_EIR_TYPE_SHORT_LOCAL_NAME, &rmt_bdname_len);
    }

    if (rmt_bdname) {
        if (rmt_bdname_len > ESP_BT_GAP_MAX_BDNAME_LEN) {
            rmt_bdname_len = ESP_BT_GAP_MAX_BDNAME_LEN;
        }

        if (bdname) {
            memcpy(bdname, rmt_bdname, rmt_bdname_len);
            bdname[rmt_bdname_len] = '\0';
        }
        if (bdname_len) {
            *bdname_len = rmt_bdname_len;
        }
        return 1;
    }

    return 0;
}
