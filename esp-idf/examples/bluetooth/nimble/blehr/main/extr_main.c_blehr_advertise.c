
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ble_hs_adv_fields {int flags; int tx_pwr_lvl_is_present; int name_is_complete; int disc_mode; int conn_mode; int name_len; int * name; int tx_pwr_lvl; } ;
struct ble_gap_adv_params {int flags; int tx_pwr_lvl_is_present; int name_is_complete; int disc_mode; int conn_mode; int name_len; int * name; int tx_pwr_lvl; } ;
typedef int fields ;
typedef int adv_params ;


 int BLE_GAP_CONN_MODE_UND ;
 int BLE_GAP_DISC_MODE_GEN ;
 int BLE_HS_ADV_F_BREDR_UNSUP ;
 int BLE_HS_ADV_F_DISC_GEN ;
 int BLE_HS_ADV_TX_PWR_LVL_AUTO ;
 int BLE_HS_FOREVER ;
 int ERROR ;
 int MODLOG_DFLT (int ,char*,int) ;
 int ble_gap_adv_set_fields (struct ble_hs_adv_fields*) ;
 int ble_gap_adv_start (int ,int *,int ,struct ble_hs_adv_fields*,int ,int *) ;
 int blehr_addr_type ;
 int blehr_gap_event ;
 scalar_t__ device_name ;
 int memset (struct ble_hs_adv_fields*,int ,int) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void
blehr_advertise(void)
{
    struct ble_gap_adv_params adv_params;
    struct ble_hs_adv_fields fields;
    int rc;







    memset(&fields, 0, sizeof(fields));






    fields.flags = BLE_HS_ADV_F_DISC_GEN |
                   BLE_HS_ADV_F_BREDR_UNSUP;






    fields.tx_pwr_lvl_is_present = 1;
    fields.tx_pwr_lvl = BLE_HS_ADV_TX_PWR_LVL_AUTO;

    fields.name = (uint8_t *)device_name;
    fields.name_len = strlen(device_name);
    fields.name_is_complete = 1;

    rc = ble_gap_adv_set_fields(&fields);
    if (rc != 0) {
        MODLOG_DFLT(ERROR, "error setting advertisement data; rc=%d\n", rc);
        return;
    }


    memset(&adv_params, 0, sizeof(adv_params));
    adv_params.conn_mode = BLE_GAP_CONN_MODE_UND;
    adv_params.disc_mode = BLE_GAP_DISC_MODE_GEN;
    rc = ble_gap_adv_start(blehr_addr_type, ((void*)0), BLE_HS_FOREVER,
                           &adv_params, blehr_gap_event, ((void*)0));
    if (rc != 0) {
        MODLOG_DFLT(ERROR, "error enabling advertisement; rc=%d\n", rc);
        return;
    }
}
