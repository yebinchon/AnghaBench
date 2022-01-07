
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int current_addr_valid; int current_addr; scalar_t__ current_addr_type; } ;
struct TYPE_8__ {TYPE_2__ ble; } ;
typedef TYPE_3__ tBTM_SEC_DEV_REC ;
typedef scalar_t__ UINT8 ;
struct TYPE_6__ {int scan_activity; } ;
struct TYPE_9__ {TYPE_1__ ble_ctr_cb; } ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_BLE_IS_RESOLVE_BDA (int ) ;
 int BTM_BLE_IS_SCAN_ACTIVE (int ) ;
 int FALSE ;
 int STREAM_TO_BDADDR (int ,scalar_t__*) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 int btm_ble_process_adv_pkt_cont (int ,scalar_t__,scalar_t__,scalar_t__*) ;
 int btm_ble_resolve_random_addr (int ,int ,scalar_t__*) ;
 int btm_ble_resolve_random_addr_on_adv ;
 TYPE_5__ btm_cb ;
 TYPE_3__* btm_find_dev (int ) ;
 int btm_identity_addr_to_random_pseudo (int ,scalar_t__*,int ) ;
 int memcpy (int ,int ,int ) ;

void btm_ble_process_adv_pkt (UINT8 *p_data)
{
    BD_ADDR bda;
    UINT8 evt_type = 0, *p = p_data;
    UINT8 addr_type = 0;
    UINT8 num_reports;
    UINT8 data_len;







    if (!BTM_BLE_IS_SCAN_ACTIVE(btm_cb.ble_ctr_cb.scan_activity)) {
        return;
    }


    STREAM_TO_UINT8(num_reports, p);

    while (num_reports--) {

        STREAM_TO_UINT8 (evt_type, p);
        STREAM_TO_UINT8 (addr_type, p);
        STREAM_TO_BDADDR (bda, p);
        btm_ble_process_adv_pkt_cont(bda, addr_type, evt_type, p);
        STREAM_TO_UINT8(data_len, p);


        p += data_len + 1;
    }
}
