
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tBT_TRANSPORT ;
struct TYPE_5__ {scalar_t__ psm; scalar_t__ transport; scalar_t__ p_ref_data; int (* p_callback ) (int ,scalar_t__,scalar_t__,scalar_t__) ;int bd_addr; } ;
typedef TYPE_1__ tBTM_SEC_QUEUE_ENTRY ;
struct TYPE_6__ {int sec_flags; int bd_addr; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
typedef int list_t ;
typedef int list_node_t ;
typedef scalar_t__ UINT8 ;
struct TYPE_7__ {int sec_pending_q; } ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_BLE_SEC_ENCRYPT ;
 scalar_t__ BTM_BLE_SEC_ENCRYPT_MITM ;
 scalar_t__ BTM_BLE_SEC_ENCRYPT_NO_MITM ;
 scalar_t__ BTM_ERR_PROCESSING ;
 int BTM_SEC_LE_AUTHENTICATED ;
 scalar_t__ BTM_SUCCESS ;
 scalar_t__ BT_TRANSPORT_BR_EDR ;
 TYPE_4__ btm_cb ;
 int * fixed_queue_get_list (int ) ;
 scalar_t__ fixed_queue_is_empty (int ) ;
 int fixed_queue_try_remove_from_queue (int ,void*) ;
 int * list_begin (int *) ;
 int const* list_end (int *) ;
 int * list_next (int const*) ;
 scalar_t__ list_node (int const*) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int stub1 (int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void btm_sec_check_pending_enc_req (tBTM_SEC_DEV_REC *p_dev_rec, tBT_TRANSPORT transport,
        UINT8 encr_enable)
{
    if (fixed_queue_is_empty(btm_cb.sec_pending_q)) {
        return;
    }

    UINT8 res = encr_enable ? BTM_SUCCESS : BTM_ERR_PROCESSING;
    list_t *list = fixed_queue_get_list(btm_cb.sec_pending_q);
    for (const list_node_t *node = list_begin(list); node != list_end(list); ) {
        tBTM_SEC_QUEUE_ENTRY *p_e = (tBTM_SEC_QUEUE_ENTRY *)list_node(node);
        node = list_next(node);

        if (memcmp(p_e->bd_addr, p_dev_rec->bd_addr, BD_ADDR_LEN) == 0 && p_e->psm == 0

            && p_e->transport == transport

           ) {

            UINT8 sec_act = *(UINT8 *)(p_e->p_ref_data);


            if (encr_enable == 0 || transport == BT_TRANSPORT_BR_EDR

                    || (sec_act == BTM_BLE_SEC_ENCRYPT || sec_act == BTM_BLE_SEC_ENCRYPT_NO_MITM)
                    || (sec_act == BTM_BLE_SEC_ENCRYPT_MITM && p_dev_rec->sec_flags
                    & BTM_SEC_LE_AUTHENTICATED)

               ) {
                if (p_e->p_callback) {
                    (*p_e->p_callback) (p_dev_rec->bd_addr, transport, p_e->p_ref_data, res);
                }

    fixed_queue_try_remove_from_queue(btm_cb.sec_pending_q, (void *)p_e);
            }
        }
    }
}
