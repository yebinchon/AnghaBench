
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_5__ {int bd_addr; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_6__ {scalar_t__ pairing_state; int pairing_flags; int pairing_bda; } ;


 int BD_ADDR_LEN ;
 int BTM_BUSY ;
 int BTM_PAIR_FLAGS_DISC_WHEN_DONE ;
 int BTM_PAIR_FLAGS_WE_STARTED_DD ;
 scalar_t__ BTM_PAIR_STATE_IDLE ;
 int BTM_SUCCESS ;
 TYPE_4__ btm_cb ;
 TYPE_1__* btm_find_dev_by_handle (int ) ;
 int btm_sec_send_hci_disconnect (TYPE_1__*,int ,int ) ;
 int btsnd_hcic_disconnect (int ,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;

tBTM_STATUS btm_sec_disconnect (UINT16 handle, UINT8 reason)
{
    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev_by_handle (handle);


    if (!p_dev_rec) {
        btsnd_hcic_disconnect (handle, reason);
        return (BTM_SUCCESS);
    }


    if ( (btm_cb.pairing_state != BTM_PAIR_STATE_IDLE)
            && (memcmp (btm_cb.pairing_bda, p_dev_rec->bd_addr, BD_ADDR_LEN) == 0)
            && (btm_cb.pairing_flags & BTM_PAIR_FLAGS_WE_STARTED_DD) ) {

        btm_cb.pairing_flags |= BTM_PAIR_FLAGS_DISC_WHEN_DONE;
        return (BTM_BUSY);
    }

    return (btm_sec_send_hci_disconnect(p_dev_rec, reason, handle));
}
