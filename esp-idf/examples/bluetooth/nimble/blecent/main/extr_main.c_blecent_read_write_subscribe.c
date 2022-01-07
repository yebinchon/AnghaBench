
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val_handle; } ;
struct peer_chr {TYPE_1__ chr; } ;
struct peer {int conn_handle; } ;


 int BLECENT_CHR_SUP_NEW_ALERT_CAT_UUID ;
 int BLECENT_SVC_ALERT_UUID ;
 int BLE_ERR_REM_USER_CONN_TERM ;
 int BLE_UUID16_DECLARE (int ) ;
 int ERROR ;
 int MODLOG_DFLT (int ,char*,...) ;
 int ble_gap_terminate (int ,int ) ;
 int ble_gattc_read (int ,int ,int ,int *) ;
 int blecent_on_read ;
 struct peer_chr* peer_chr_find_uuid (struct peer const*,int ,int ) ;

__attribute__((used)) static void
blecent_read_write_subscribe(const struct peer *peer)
{
    const struct peer_chr *chr;
    int rc;


    chr = peer_chr_find_uuid(peer,
                             BLE_UUID16_DECLARE(BLECENT_SVC_ALERT_UUID),
                             BLE_UUID16_DECLARE(BLECENT_CHR_SUP_NEW_ALERT_CAT_UUID));
    if (chr == ((void*)0)) {
        MODLOG_DFLT(ERROR, "Error: Peer doesn't support the Supported New "
                    "Alert Category characteristic\n");
        goto err;
    }

    rc = ble_gattc_read(peer->conn_handle, chr->chr.val_handle,
                        blecent_on_read, ((void*)0));
    if (rc != 0) {
        MODLOG_DFLT(ERROR, "Error: Failed to read characteristic; rc=%d\n",
                    rc);
        goto err;
    }

    return;
err:

    ble_gap_terminate(peer->conn_handle, BLE_ERR_REM_USER_CONN_TERM);
}
