
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int handle; } ;
struct peer_dsc {TYPE_1__ dsc; } ;
struct peer {int conn_handle; } ;
struct ble_gatt_error {int status; } ;
struct ble_gatt_attr {int handle; } ;


 int BLECENT_CHR_UNR_ALERT_STAT_UUID ;
 int BLECENT_SVC_ALERT_UUID ;
 int BLE_ERR_REM_USER_CONN_TERM ;
 int BLE_GATT_DSC_CLT_CFG_UUID16 ;
 int BLE_UUID16_DECLARE (int ) ;
 int ERROR ;
 int INFO ;
 int MODLOG_DFLT (int ,char*,...) ;
 int ble_gap_terminate (int ,int ) ;
 int ble_gattc_write_flat (int ,int ,int*,int,int ,int *) ;
 int blecent_on_subscribe ;
 struct peer_dsc* peer_dsc_find_uuid (struct peer const*,int ,int ,int ) ;
 struct peer* peer_find (int ) ;

__attribute__((used)) static int
blecent_on_write(uint16_t conn_handle,
                 const struct ble_gatt_error *error,
                 struct ble_gatt_attr *attr,
                 void *arg)
{
    MODLOG_DFLT(INFO,
                "Write complete; status=%d conn_handle=%d attr_handle=%d\n",
                error->status, conn_handle, attr->handle);





    const struct peer_dsc *dsc;
    uint8_t value[2];
    int rc;
    const struct peer *peer = peer_find(conn_handle);

    dsc = peer_dsc_find_uuid(peer,
                             BLE_UUID16_DECLARE(BLECENT_SVC_ALERT_UUID),
                             BLE_UUID16_DECLARE(BLECENT_CHR_UNR_ALERT_STAT_UUID),
                             BLE_UUID16_DECLARE(BLE_GATT_DSC_CLT_CFG_UUID16));
    if (dsc == ((void*)0)) {
        MODLOG_DFLT(ERROR, "Error: Peer lacks a CCCD for the Unread Alert "
                    "Status characteristic\n");
        goto err;
    }

    value[0] = 1;
    value[1] = 0;
    rc = ble_gattc_write_flat(conn_handle, dsc->dsc.handle,
                              value, sizeof value, blecent_on_subscribe, ((void*)0));
    if (rc != 0) {
        MODLOG_DFLT(ERROR, "Error: Failed to subscribe to characteristic; "
                    "rc=%d\n", rc);
        goto err;
    }

    return 0;
err:

    return ble_gap_terminate(peer->conn_handle, BLE_ERR_REM_USER_CONN_TERM);
}
