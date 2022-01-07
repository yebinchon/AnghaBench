
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int payload_size; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef int tGATT_STATUS ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_8__ {int len; } ;
typedef TYPE_2__ BT_HDR ;


 int GATT_ILLEGAL_PARAMETER ;
 int GATT_NO_RESOURCES ;
 int L2CAP_MIN_OFFSET ;
 int attp_send_sr_msg (TYPE_1__*,TYPE_2__*) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

tGATT_STATUS gatt_send_packet (tGATT_TCB *p_tcb, UINT8 *p_data, UINT16 len)
{
    BT_HDR *p_msg = ((void*)0);
    UINT8 *p_m = ((void*)0);
    UINT16 buf_len;
    tGATT_STATUS status;

    if (len > p_tcb->payload_size){
        return GATT_ILLEGAL_PARAMETER;
    }

    buf_len = (UINT16)(sizeof(BT_HDR) + p_tcb->payload_size + L2CAP_MIN_OFFSET);
    if ((p_msg = (BT_HDR *)osi_malloc(buf_len)) == ((void*)0)) {
        return GATT_NO_RESOURCES;
    }

    memset(p_msg, 0, buf_len);
    p_msg->len = len;
    p_m = (UINT8 *)(p_msg + 1) + L2CAP_MIN_OFFSET;
    memcpy(p_m, p_data, len);

    status = attp_send_sr_msg(p_tcb, p_msg);
    return status;
}
