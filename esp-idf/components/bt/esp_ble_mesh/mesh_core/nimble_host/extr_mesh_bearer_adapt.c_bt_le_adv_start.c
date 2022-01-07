
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct bt_mesh_adv_param {int options; int interval_max; int interval_min; } ;
struct bt_mesh_adv_data {int dummy; } ;
struct ble_gap_adv_params {void* disc_mode; void* conn_mode; int itvl_max; int itvl_min; } ;
struct TYPE_2__ {int flags; } ;


 void* BLE_GAP_CONN_MODE_NON ;
 void* BLE_GAP_CONN_MODE_UND ;
 void* BLE_GAP_DISC_MODE_GEN ;
 void* BLE_GAP_DISC_MODE_NON ;
 int BLE_HS_ADV_MAX_SZ ;
 int BLE_HS_FOREVER ;
 int BLE_MESH_ADV_OPT_CONNECTABLE ;
 int BLE_MESH_ADV_OPT_ONE_TIME ;
 int BLE_MESH_DEV_ADVERTISING ;
 int BLE_MESH_DEV_KEEP_ADVERTISING ;
 int BLE_OWN_ADDR_PUBLIC ;
 int BT_ERR (char*,int) ;
 int EALREADY ;
 int ble_gap_adv_rsp_set_data (scalar_t__*,scalar_t__) ;
 int ble_gap_adv_set_data (scalar_t__*,scalar_t__) ;
 int ble_gap_adv_start (int ,int *,int ,struct ble_gap_adv_params*,int ,int *) ;
 int bt_mesh_atomic_set_bit (int ,int ) ;
 scalar_t__ bt_mesh_atomic_test_bit (int ,int ) ;
 TYPE_1__ bt_mesh_dev ;
 int gap_event_cb ;
 int memset (struct ble_gap_adv_params*,int ,int) ;
 int set_ad (struct bt_mesh_adv_data const*,size_t,scalar_t__*,scalar_t__*) ;

int bt_le_adv_start(const struct bt_mesh_adv_param *param,
                    const struct bt_mesh_adv_data *ad, size_t ad_len,
                    const struct bt_mesh_adv_data *sd, size_t sd_len)
{





    uint8_t buf[BLE_HS_ADV_MAX_SZ];
    uint8_t buf_len = 0;
    int err;
    struct ble_gap_adv_params adv_params;

    err = set_ad(ad, ad_len, buf, &buf_len);
    if (err) {
        BT_ERR("set_ad failed: err %d", err);
        return err;
    }

    err = ble_gap_adv_set_data(buf, buf_len);
    if (err != 0) {
        BT_ERR("Advertising set failed: err %d", err);
        return err;
    }

    if (sd && (param->options & BLE_MESH_ADV_OPT_CONNECTABLE)) {
        buf_len = 0;

        err = set_ad(sd, sd_len, buf, &buf_len);
        if (err) {
            BT_ERR("set_ad failed: err %d", err);
            return err;
        }

        err = ble_gap_adv_rsp_set_data(buf, buf_len);
        if (err != 0) {
            BT_ERR("Scan rsp failed: err %d", err);
            return err;
        }
    }

    memset(&adv_params, 0, sizeof adv_params);
    adv_params.itvl_min = param->interval_min;
    adv_params.itvl_max = param->interval_max;

    if (param->options & BLE_MESH_ADV_OPT_CONNECTABLE) {
        adv_params.conn_mode = BLE_GAP_CONN_MODE_UND;
        adv_params.disc_mode = BLE_GAP_DISC_MODE_GEN;
    } else if (sd != ((void*)0)) {
        adv_params.conn_mode = BLE_GAP_CONN_MODE_NON;
        adv_params.disc_mode = BLE_GAP_DISC_MODE_GEN;
    } else {
        adv_params.conn_mode = BLE_GAP_CONN_MODE_NON;
        adv_params.disc_mode = BLE_GAP_DISC_MODE_NON;
    }

    err = ble_gap_adv_start(BLE_OWN_ADDR_PUBLIC, ((void*)0), BLE_HS_FOREVER, &adv_params,
                            gap_event_cb, ((void*)0));
    if (err) {
        BT_ERR("Advertising start failed: err %d", err);
        return err;
    }
    return 0;
}
