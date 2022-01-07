
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef int LAP ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ HCIC_PARAM_SIZE_PER_INQ_MODE ;
 scalar_t__ HCIC_PREAMBLE_SIZE ;
 TYPE_1__* HCI_GET_CMD_BUF (scalar_t__) ;
 int HCI_PERIODIC_INQUIRY_MODE ;
 int LAP_TO_STREAM (scalar_t__*,int const) ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 int TRUE ;
 int UINT16_TO_STREAM (scalar_t__*,int ) ;
 int UINT8_TO_STREAM (scalar_t__*,scalar_t__) ;
 int btu_hcif_send_cmd (int ,TYPE_1__*) ;

BOOLEAN btsnd_hcic_per_inq_mode (UINT16 max_period, UINT16 min_period,
                                 const LAP inq_lap, UINT8 duration, UINT8 response_cnt)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = HCI_GET_CMD_BUF(HCIC_PARAM_SIZE_PER_INQ_MODE)) == ((void*)0)) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_PER_INQ_MODE;
    p->offset = 0;

    UINT16_TO_STREAM (pp, HCI_PERIODIC_INQUIRY_MODE);
    UINT8_TO_STREAM (pp, HCIC_PARAM_SIZE_PER_INQ_MODE);

    UINT16_TO_STREAM (pp, max_period);
    UINT16_TO_STREAM (pp, min_period);
    LAP_TO_STREAM (pp, inq_lap);
    UINT8_TO_STREAM (pp, duration);
    UINT8_TO_STREAM (pp, response_cnt);

    btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
    return (TRUE);
}
