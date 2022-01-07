
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {int in_controller_list; int static_addr_type; int static_addr; } ;
struct TYPE_17__ {TYPE_1__ ble; } ;
typedef TYPE_6__ tBTM_SEC_DEV_REC ;
struct TYPE_13__ {int bda; int type; } ;
struct TYPE_18__ {scalar_t__ connectable_mode; scalar_t__ directed_conn; scalar_t__ afp; TYPE_2__ direct_bda; scalar_t__ scan_rsp; } ;
typedef TYPE_7__ tBTM_BLE_INQ_CB ;
typedef int tBLE_ADDR_TYPE ;
typedef scalar_t__ UINT8 ;
struct TYPE_16__ {scalar_t__ privacy_mode; } ;
struct TYPE_14__ {int in_controller_list; int static_addr_type; int static_addr; } ;
struct TYPE_15__ {int sec_flags; TYPE_3__ ble; } ;
struct TYPE_11__ {TYPE_5__ ble_ctr_cb; TYPE_4__* sec_dev_rec; } ;
typedef int BD_ADDR_PTR ;


 scalar_t__ AP_SCAN_CONN_ALL ;
 int BD_ADDR_LEN ;
 int BLE_ADDR_RANDOM ;
 int BLE_ADDR_RANDOM_ID ;
 scalar_t__ BTM_BLE_CONNECT_DIR_EVT ;
 scalar_t__ BTM_BLE_CONNECT_EVT ;
 scalar_t__ BTM_BLE_CONNECT_LO_DUTY_DIR_EVT ;
 scalar_t__ BTM_BLE_DISCOVER_EVT ;
 scalar_t__ BTM_BLE_NON_CONNECTABLE ;
 scalar_t__ BTM_BLE_NON_CONNECT_EVT ;
 int BTM_BLE_RL_ADV ;
 scalar_t__ BTM_PRIVACY_1_2 ;
 scalar_t__ BTM_PRIVACY_MIXED ;
 scalar_t__ BTM_PRIVACY_NONE ;
 int BTM_RESOLVING_LIST_BIT ;
 int BTM_SEC_IN_USE ;
 scalar_t__ BTM_SEC_MAX_DEVICE_RECORDS ;
 int TRUE ;
 int btm_ble_disable_resolving_list (int ,int ) ;
 int btm_ble_enable_resolving_list (int ) ;
 TYPE_10__ btm_cb ;
 TYPE_6__* btm_find_or_alloc_dev (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static UINT8 btm_set_conn_mode_adv_init_addr(tBTM_BLE_INQ_CB *p_cb,
        BD_ADDR_PTR p_peer_addr_ptr,
        tBLE_ADDR_TYPE *p_peer_addr_type,
        tBLE_ADDR_TYPE *p_own_addr_type)
{
    UINT8 evt_type;

    UINT8 i = BTM_SEC_MAX_DEVICE_RECORDS;
    tBTM_SEC_DEV_REC *p_dev_rec;

    evt_type = (p_cb->connectable_mode == BTM_BLE_NON_CONNECTABLE) ? ((p_cb->scan_rsp) ? BTM_BLE_DISCOVER_EVT : BTM_BLE_NON_CONNECT_EVT ) : BTM_BLE_CONNECT_EVT;



    if (evt_type == BTM_BLE_CONNECT_EVT) {
        evt_type = p_cb->directed_conn;

        if ( p_cb->directed_conn == BTM_BLE_CONNECT_DIR_EVT ||
                p_cb->directed_conn == BTM_BLE_CONNECT_LO_DUTY_DIR_EVT) {



            if (btm_cb.ble_ctr_cb.privacy_mode == BTM_PRIVACY_1_2 ||
                    btm_cb.ble_ctr_cb.privacy_mode == BTM_PRIVACY_MIXED) {

                if ((p_dev_rec = btm_find_or_alloc_dev (p_cb->direct_bda.bda)) != ((void*)0) &&
                        p_dev_rec->ble.in_controller_list & BTM_RESOLVING_LIST_BIT) {
                    btm_ble_enable_resolving_list(BTM_BLE_RL_ADV);
                    memcpy(p_peer_addr_ptr, p_dev_rec->ble.static_addr, BD_ADDR_LEN);
                    *p_peer_addr_type = p_dev_rec->ble.static_addr_type;
                    *p_own_addr_type = BLE_ADDR_RANDOM_ID;
                    return evt_type;
                }

                else {
                    btm_ble_disable_resolving_list(BTM_BLE_RL_ADV, TRUE);
                }
            }


            *p_peer_addr_type = p_cb->direct_bda.type;
            memcpy(p_peer_addr_ptr, p_cb->direct_bda.bda, BD_ADDR_LEN);
            return evt_type;
        }
    }




    if ((btm_cb.ble_ctr_cb.privacy_mode == BTM_PRIVACY_1_2 && p_cb->afp != AP_SCAN_CONN_ALL) ||
            btm_cb.ble_ctr_cb.privacy_mode == BTM_PRIVACY_MIXED) {

        for (i = 0; i < BTM_SEC_MAX_DEVICE_RECORDS; i ++) {
            if ((btm_cb.sec_dev_rec[i].sec_flags & BTM_SEC_IN_USE) != 0 &&
                    (btm_cb.sec_dev_rec[i].ble.in_controller_list & BTM_RESOLVING_LIST_BIT) != 0) {
                memcpy(p_peer_addr_ptr, btm_cb.sec_dev_rec[i].ble.static_addr, BD_ADDR_LEN);
                *p_peer_addr_type = btm_cb.sec_dev_rec[i].ble.static_addr_type;
                break;
            }
        }

        if (i != BTM_SEC_MAX_DEVICE_RECORDS) {
            *p_own_addr_type = BLE_ADDR_RANDOM_ID;
        } else

        {
            *p_own_addr_type = BLE_ADDR_RANDOM;
        }
    }


    else if (btm_cb.ble_ctr_cb.privacy_mode != BTM_PRIVACY_NONE) {
        *p_own_addr_type = BLE_ADDR_RANDOM;
    }




    return evt_type;
}
