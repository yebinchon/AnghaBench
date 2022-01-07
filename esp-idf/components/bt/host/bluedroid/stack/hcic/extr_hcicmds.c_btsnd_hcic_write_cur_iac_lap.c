
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_4__ {int len; scalar_t__ offset; } ;
typedef int LAP ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;


 int FALSE ;
 int HCIC_PREAMBLE_SIZE ;
 TYPE_1__* HCI_GET_CMD_BUF (int) ;
 int HCI_WRITE_CURRENT_IAC_LAP ;
 int LAP_LEN ;
 int LAP_TO_STREAM (int*,int ) ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 int TRUE ;
 int UINT16_TO_STREAM (int*,int ) ;
 int UINT8_TO_STREAM (int*,int) ;
 int btu_hcif_send_cmd (int ,TYPE_1__*) ;

BOOLEAN btsnd_hcic_write_cur_iac_lap (UINT8 num_cur_iac, LAP *const iac_lap)
{
    BT_HDR *p;
    UINT8 *pp;
    int i;

    if ((p = HCI_GET_CMD_BUF(1 + (LAP_LEN * num_cur_iac))) == ((void*)0)) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len = HCIC_PREAMBLE_SIZE + 1 + (LAP_LEN * num_cur_iac);
    p->offset = 0;

    UINT16_TO_STREAM (pp, HCI_WRITE_CURRENT_IAC_LAP);
    UINT8_TO_STREAM (pp, p->len - HCIC_PREAMBLE_SIZE);

    UINT8_TO_STREAM (pp, num_cur_iac);

    for (i = 0; i < num_cur_iac; i++) {
        LAP_TO_STREAM (pp, iac_lap[i]);
    }

    btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
    return (TRUE);
}
