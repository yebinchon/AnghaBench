
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; int * value; int handle; } ;
typedef TYPE_1__ tGATT_VALUE ;
struct TYPE_9__ {TYPE_4__* p_tcb; scalar_t__ p_attr_buf; } ;
typedef TYPE_2__ tGATT_CLCB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_10__ {int payload_size; int peer_bda; } ;
typedef int BOOLEAN ;


 int ARRAY_TO_STREAM (int *,int *,int) ;
 int BTM_BLE_AUTH_SIGN_LEN ;
 scalar_t__ BTM_BleDataSignature (int ,int *,int,int *) ;
 int FALSE ;
 int GATT_AUTH_SIGN_LEN ;
 int GATT_CH_OPEN ;
 int GATT_INTERNAL_ERROR ;
 int GATT_SEC_OK ;
 int GATT_SEC_SIGN_DATA ;
 int GATT_SIGN_CMD_WRITE ;
 int UINT16_TO_STREAM (int *,int ) ;
 int UINT8_TO_STREAM (int *,int ) ;
 int gatt_act_write (TYPE_2__*,int ) ;
 int gatt_end_operation (TYPE_2__*,int ,int *) ;
 int gatt_set_ch_state (TYPE_4__*,int ) ;
 int gatt_set_sec_act (TYPE_4__*,int ) ;
 int osi_free (int *) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static BOOLEAN gatt_sign_data (tGATT_CLCB *p_clcb)
{
    tGATT_VALUE *p_attr = (tGATT_VALUE *)p_clcb->p_attr_buf;
    UINT8 *p_data = ((void*)0), *p;
    UINT16 payload_size = p_clcb->p_tcb->payload_size;
    BOOLEAN status = FALSE;
    UINT8 *p_signature;


    gatt_set_sec_act(p_clcb->p_tcb, GATT_SEC_OK);

    p_data = (UINT8 *)osi_malloc((UINT16)(p_attr->len + 3));

    if (p_data != ((void*)0)) {
        p = p_data;
        UINT8_TO_STREAM(p, GATT_SIGN_CMD_WRITE);
        UINT16_TO_STREAM(p, p_attr->handle);
        ARRAY_TO_STREAM(p, p_attr->value, p_attr->len);


        if ((payload_size - GATT_AUTH_SIGN_LEN - 3) < p_attr->len) {
            p_attr->len = payload_size - GATT_AUTH_SIGN_LEN - 3;
        }

        p_signature = p_attr->value + p_attr->len;
        if (BTM_BleDataSignature(p_clcb->p_tcb->peer_bda,
                                 p_data,
                                 (UINT16)(p_attr->len + 3),
                                 p_signature)) {
            p_attr->len += BTM_BLE_AUTH_SIGN_LEN;
            gatt_set_ch_state(p_clcb->p_tcb, GATT_CH_OPEN);

            gatt_act_write(p_clcb, GATT_SEC_SIGN_DATA);

        } else {
            gatt_end_operation(p_clcb, GATT_INTERNAL_ERROR, ((void*)0));
        }

        osi_free(p_data);
    }

    return status;
}
