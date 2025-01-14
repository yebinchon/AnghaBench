
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BDADDR_TO_STREAM (scalar_t__*,int ) ;
 int FALSE ;
 scalar_t__ HCIC_PARAM_SIZE_ACCEPT_CONN ;
 scalar_t__ HCIC_PREAMBLE_SIZE ;
 int HCI_ACCEPT_CONNECTION_REQUEST ;
 TYPE_1__* HCI_GET_CMD_BUF (scalar_t__) ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 int TRUE ;
 int UINT16_TO_STREAM (scalar_t__*,int ) ;
 int UINT8_TO_STREAM (scalar_t__*,scalar_t__) ;
 int btu_hcif_send_cmd (int ,TYPE_1__*) ;

BOOLEAN btsnd_hcic_accept_conn (BD_ADDR dest, UINT8 role)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = HCI_GET_CMD_BUF(HCIC_PARAM_SIZE_ACCEPT_CONN)) == ((void*)0)) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_ACCEPT_CONN;
    p->offset = 0;

    UINT16_TO_STREAM (pp, HCI_ACCEPT_CONNECTION_REQUEST);
    UINT8_TO_STREAM (pp, HCIC_PARAM_SIZE_ACCEPT_CONN);
    BDADDR_TO_STREAM (pp, dest);
    UINT8_TO_STREAM (pp, role);



    btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
    return (TRUE);
}
