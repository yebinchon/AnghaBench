
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ HCIC_PARAM_SIZE_SNIFF_MODE ;
 scalar_t__ HCIC_PREAMBLE_SIZE ;
 TYPE_1__* HCI_GET_CMD_BUF (scalar_t__) ;
 int HCI_SNIFF_MODE ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 int TRUE ;
 int UINT16_TO_STREAM (int *,int ) ;
 int UINT8_TO_STREAM (int *,scalar_t__) ;
 int btu_hcif_send_cmd (int ,TYPE_1__*) ;

BOOLEAN btsnd_hcic_sniff_mode (UINT16 handle, UINT16 max_sniff_period,
                               UINT16 min_sniff_period, UINT16 sniff_attempt,
                               UINT16 sniff_timeout)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = HCI_GET_CMD_BUF(HCIC_PARAM_SIZE_SNIFF_MODE)) == ((void*)0)) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_SNIFF_MODE;
    p->offset = 0;

    UINT16_TO_STREAM (pp, HCI_SNIFF_MODE);
    UINT8_TO_STREAM (pp, HCIC_PARAM_SIZE_SNIFF_MODE);

    UINT16_TO_STREAM (pp, handle);
    UINT16_TO_STREAM (pp, max_sniff_period);
    UINT16_TO_STREAM (pp, min_sniff_period);
    UINT16_TO_STREAM (pp, sniff_attempt);
    UINT16_TO_STREAM (pp, sniff_timeout);

    btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
    return (TRUE);
}
