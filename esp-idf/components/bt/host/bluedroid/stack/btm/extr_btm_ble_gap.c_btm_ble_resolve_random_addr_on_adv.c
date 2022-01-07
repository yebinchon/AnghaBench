
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pseudo_addr; int cur_rand_addr; int active_addr_type; } ;
struct TYPE_5__ {TYPE_1__ ble; int bd_addr; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
typedef int UINT8 ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BLE_ADDR_RANDOM ;
 int BTM_BLE_ADDR_RRA ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTM_TRACE_EVENT (char*) ;
 int STREAM_TO_BDADDR (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 scalar_t__ btm_ble_init_pseudo_addr (TYPE_2__*,int ) ;
 int btm_ble_process_adv_pkt_cont (int ,int ,int ,int *) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void btm_ble_resolve_random_addr_on_adv(void *p_rec, void *p)
{
    tBTM_SEC_DEV_REC *match_rec = (tBTM_SEC_DEV_REC *) p_rec;
    UINT8 addr_type = BLE_ADDR_RANDOM;
    BD_ADDR bda;
    UINT8 *pp = (UINT8 *)p + 1;
    UINT8 evt_type;

    BTM_TRACE_EVENT ("btm_ble_resolve_random_addr_on_adv ");

    STREAM_TO_UINT8 (evt_type, pp);
    STREAM_TO_UINT8 (addr_type, pp);
    STREAM_TO_BDADDR (bda, pp);

    if (match_rec) {
        BTM_TRACE_DEBUG("Random match");
        match_rec->ble.active_addr_type = BTM_BLE_ADDR_RRA;
        memcpy(match_rec->ble.cur_rand_addr, bda, BD_ADDR_LEN);

        if (btm_ble_init_pseudo_addr(match_rec, bda)) {
            memcpy(bda, match_rec->bd_addr, BD_ADDR_LEN);
        } else {

            memcpy(bda, match_rec->ble.pseudo_addr, BD_ADDR_LEN);
        }
    }

    btm_ble_process_adv_pkt_cont(bda, addr_type, evt_type, pp);

    return;
}
