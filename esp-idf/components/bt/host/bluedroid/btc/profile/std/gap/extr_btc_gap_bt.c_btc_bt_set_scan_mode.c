
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_DM_DISC ;
typedef int tBTA_DM_CONN ;
typedef int esp_bt_discovery_mode_t ;
typedef int esp_bt_connection_mode_t ;


 int BTA_DM_CONN ;
 int BTA_DM_GENERAL_DISC ;
 int BTA_DM_IGNORE ;
 int BTA_DM_LIMITED_DISC ;
 int BTA_DM_NON_CONN ;
 int BTA_DM_NON_DISC ;
 int BTA_DmSetVisibility (int ,int ,int ,int ) ;
 int BTC_TRACE_WARNING (char*,int) ;






__attribute__((used)) static void btc_bt_set_scan_mode(esp_bt_connection_mode_t c_mode, esp_bt_discovery_mode_t d_mode)
{
    tBTA_DM_DISC disc_mode;
    tBTA_DM_CONN conn_mode;

    switch (c_mode) {
    case 129:
        conn_mode = BTA_DM_NON_CONN;
        break;
    case 132:
        conn_mode = BTA_DM_CONN;
        break;
    default:
        BTC_TRACE_WARNING("invalid connection mode (0x%x)", c_mode);
        return;
    }

    switch (d_mode) {
    case 128:
        disc_mode = BTA_DM_NON_DISC;
        break;
    case 130:
        disc_mode = BTA_DM_LIMITED_DISC;
        break;
    case 131:
        disc_mode = BTA_DM_GENERAL_DISC;
        break;
    default:
        BTC_TRACE_WARNING("invalid discovery mode (0x%x)", d_mode);
        return;
    }

    BTA_DmSetVisibility(disc_mode, conn_mode, BTA_DM_IGNORE, BTA_DM_IGNORE);
    return;
}
