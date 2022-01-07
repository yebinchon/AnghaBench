
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;
struct TYPE_6__ {int type; scalar_t__ val; } ;
typedef TYPE_2__ esp_bt_gap_dev_prop_t ;
struct TYPE_5__ {int num_prop; int bda; TYPE_2__* prop; } ;
struct TYPE_7__ {TYPE_1__ disc_res; } ;
typedef TYPE_3__ esp_bt_gap_cb_param_t ;


 int APP_AV_STATE_DISCOVERED ;
 int BT_AV_TAG ;
 int ESP_BD_ADDR_LEN ;
 int ESP_BT_COD_SRVC_RENDERING ;




 int ESP_LOGI (int ,char*,...) ;
 int bda2str (int ,char*,int) ;
 int esp_bt_gap_cancel_discovery () ;
 int esp_bt_gap_get_cod_srvc (int ) ;
 int esp_bt_gap_is_valid_cod (int ) ;
 int get_name_from_eir (int *,scalar_t__,int *) ;
 int memcpy (int ,int ,int ) ;
 int s_a2d_state ;
 int s_peer_bda ;
 scalar_t__ s_peer_bdname ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void filter_inquiry_scan_result(esp_bt_gap_cb_param_t *param)
{
    char bda_str[18];
    uint32_t cod = 0;
    int32_t rssi = -129;
    uint8_t *eir = ((void*)0);
    esp_bt_gap_dev_prop_t *p;

    ESP_LOGI(BT_AV_TAG, "Scanned device: %s", bda2str(param->disc_res.bda, bda_str, 18));
    for (int i = 0; i < param->disc_res.num_prop; i++) {
        p = param->disc_res.prop + i;
        switch (p->type) {
        case 130:
            cod = *(uint32_t *)(p->val);
            ESP_LOGI(BT_AV_TAG, "--Class of Device: 0x%x", cod);
            break;
        case 128:
            rssi = *(int8_t *)(p->val);
            ESP_LOGI(BT_AV_TAG, "--RSSI: %d", rssi);
            break;
        case 129:
            eir = (uint8_t *)(p->val);
            break;
        case 131:
        default:
            break;
        }
    }


    if (!esp_bt_gap_is_valid_cod(cod) ||
            !(esp_bt_gap_get_cod_srvc(cod) & ESP_BT_COD_SRVC_RENDERING)) {
        return;
    }


    if (eir) {
        get_name_from_eir(eir, s_peer_bdname, ((void*)0));
        if (strcmp((char *)s_peer_bdname, "ESP_SPEAKER") != 0) {
            return;
        }

        ESP_LOGI(BT_AV_TAG, "Found a target device, address %s, name %s", bda_str, s_peer_bdname);
        s_a2d_state = APP_AV_STATE_DISCOVERED;
        memcpy(s_peer_bda, param->disc_res.bda, ESP_BD_ADDR_LEN);
        ESP_LOGI(BT_AV_TAG, "Cancel device discovery ...");
        esp_bt_gap_cancel_discovery();
    }
}
