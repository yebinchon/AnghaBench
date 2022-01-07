
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_4__ {int len; scalar_t__ offset; } ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;


 int FALSE ;
 int HCIC_PREAMBLE_SIZE ;
 TYPE_1__* HCI_GET_CMD_BUF (int) ;
 int HCI_HOST_NUM_PACKETS_DONE ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 int TRUE ;
 int UINT16_TO_STREAM (int*,int ) ;
 int UINT8_TO_STREAM (int*,int) ;
 int btu_hcif_send_cmd (int ,TYPE_1__*) ;

BOOLEAN btsnd_hcic_host_num_xmitted_pkts (UINT8 num_handles, UINT16 *handle,
        UINT16 *num_pkts)
{
    BT_HDR *p;
    UINT8 *pp;
    int j;

    if ((p = HCI_GET_CMD_BUF(1 + (num_handles * 4))) == ((void*)0)) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len = HCIC_PREAMBLE_SIZE + 1 + (num_handles * 4);
    p->offset = 0;

    UINT16_TO_STREAM (pp, HCI_HOST_NUM_PACKETS_DONE);
    UINT8_TO_STREAM (pp, p->len - HCIC_PREAMBLE_SIZE);

    UINT8_TO_STREAM (pp, num_handles);

    for (j = 0; j < num_handles; j++) {
        UINT16_TO_STREAM (pp, handle[j]);
        UINT16_TO_STREAM (pp, num_pkts[j]);
    }

    btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
    return (TRUE);
}
