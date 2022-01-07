
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int val_handle; } ;
struct peer_chr {TYPE_1__ chr; } ;
struct peer {int conn_handle; } ;
struct ble_gatt_error {scalar_t__ status; } ;
struct ble_gatt_attr {int handle; int om; } ;


 int BLECENT_CHR_ALERT_NOT_CTRL_PT ;
 int BLECENT_SVC_ALERT_UUID ;
 int BLE_ERR_REM_USER_CONN_TERM ;
 int BLE_UUID16_DECLARE (int ) ;
 int ERROR ;
 int INFO ;
 int MODLOG_DFLT (int ,char*,...) ;
 int ble_gap_terminate (int ,int ) ;
 int ble_gattc_write_flat (int ,int ,int*,int,int ,int *) ;
 int blecent_on_write ;
 struct peer_chr* peer_chr_find_uuid (struct peer const*,int ,int ) ;
 struct peer* peer_find (int ) ;
 int print_mbuf (int ) ;

__attribute__((used)) static int
blecent_on_read(uint16_t conn_handle,
                const struct ble_gatt_error *error,
                struct ble_gatt_attr *attr,
                void *arg)
{
    MODLOG_DFLT(INFO, "Read complete; status=%d conn_handle=%d", error->status,
                conn_handle);
    if (error->status == 0) {
        MODLOG_DFLT(INFO, " attr_handle=%d value=", attr->handle);
        print_mbuf(attr->om);
    }
    MODLOG_DFLT(INFO, "\n");




    const struct peer_chr *chr;
    uint8_t value[2];
    int rc;
    const struct peer *peer = peer_find(conn_handle);

    chr = peer_chr_find_uuid(peer,
                             BLE_UUID16_DECLARE(BLECENT_SVC_ALERT_UUID),
                             BLE_UUID16_DECLARE(BLECENT_CHR_ALERT_NOT_CTRL_PT));
    if (chr == ((void*)0)) {
        MODLOG_DFLT(ERROR, "Error: Peer doesn't support the Alert "
                    "Notification Control Point characteristic\n");
        goto err;
    }

    value[0] = 99;
    value[1] = 100;
    rc = ble_gattc_write_flat(conn_handle, chr->chr.val_handle,
                              value, sizeof value, blecent_on_write, ((void*)0));
    if (rc != 0) {
        MODLOG_DFLT(ERROR, "Error: Failed to write characteristic; rc=%d\n",
                    rc);
        goto err;
    }

    return 0;
err:

    return ble_gap_terminate(peer->conn_handle, BLE_ERR_REM_USER_CONN_TERM);
}
