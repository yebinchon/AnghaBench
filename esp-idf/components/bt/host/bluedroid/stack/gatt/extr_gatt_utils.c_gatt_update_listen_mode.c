
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ listening; scalar_t__ in_use; } ;
typedef TYPE_1__ tGATT_REG ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_4__ {TYPE_1__* cl_rcb; } ;
typedef scalar_t__ BOOLEAN ;


 int AP_SCAN_CONN_ALL ;
 int AP_SCAN_CONN_WL ;
 int BTM_BLE_CONNECTABLE ;
 int BTM_BleUpdateAdvFilterPolicy (int ) ;
 int BTM_ReadConnectability (int*,int*) ;
 scalar_t__ GATT_LISTEN_TO_ALL ;
 scalar_t__ GATT_LISTEN_TO_NONE ;
 scalar_t__ GATT_MAX_APPS ;
 scalar_t__ TRUE ;
 int btm_ble_set_connectability (int) ;
 TYPE_2__ gatt_cb ;

BOOLEAN gatt_update_listen_mode(void)
{
    UINT8 ii = 0;
    tGATT_REG *p_reg = &gatt_cb.cl_rcb[0];
    UINT8 listening = 0;
    UINT16 connectability, window, interval;
    BOOLEAN rt = TRUE;

    for (; ii < GATT_MAX_APPS; ii ++, p_reg ++) {
        if ( p_reg->in_use && p_reg->listening > listening) {
            listening = p_reg->listening;
        }
    }

    if (listening == GATT_LISTEN_TO_ALL ||
            listening == GATT_LISTEN_TO_NONE) {
        BTM_BleUpdateAdvFilterPolicy (AP_SCAN_CONN_ALL);
    } else {
        BTM_BleUpdateAdvFilterPolicy (AP_SCAN_CONN_WL);
    }

    if (rt) {
        connectability = BTM_ReadConnectability (&window, &interval);

        if (listening != GATT_LISTEN_TO_NONE) {
            connectability |= BTM_BLE_CONNECTABLE;
        } else {
            if ((connectability & BTM_BLE_CONNECTABLE) == 0) {
                connectability &= ~BTM_BLE_CONNECTABLE;
            }
        }

        btm_ble_set_connectability(connectability);
    }

    return rt;

}
