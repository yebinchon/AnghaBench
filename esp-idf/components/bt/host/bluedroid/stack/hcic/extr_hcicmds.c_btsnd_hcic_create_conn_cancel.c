
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BDADDR_TO_STREAM (int *,int ) ;
 int FALSE ;
 scalar_t__ HCIC_PARAM_SIZE_CREATE_CONN_CANCEL ;
 scalar_t__ HCIC_PREAMBLE_SIZE ;
 int HCI_CREATE_CONNECTION_CANCEL ;
 TYPE_1__* HCI_GET_CMD_BUF (scalar_t__) ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 int TRUE ;
 int UINT16_TO_STREAM (int *,int ) ;
 int UINT8_TO_STREAM (int *,scalar_t__) ;
 int btu_hcif_send_cmd (int ,TYPE_1__*) ;

BOOLEAN btsnd_hcic_create_conn_cancel(BD_ADDR dest)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = HCI_GET_CMD_BUF(HCIC_PARAM_SIZE_CREATE_CONN_CANCEL)) == ((void*)0)) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_CREATE_CONN_CANCEL;
    p->offset = 0;

    UINT16_TO_STREAM (pp, HCI_CREATE_CONNECTION_CANCEL);
    UINT8_TO_STREAM (pp, HCIC_PARAM_SIZE_CREATE_CONN_CANCEL);

    BDADDR_TO_STREAM (pp, dest);

    btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
    return (TRUE);
}
