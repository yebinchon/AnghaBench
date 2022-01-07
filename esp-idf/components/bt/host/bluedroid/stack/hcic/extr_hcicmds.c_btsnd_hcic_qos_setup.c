
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ HCIC_PARAM_SIZE_QOS_SETUP ;
 scalar_t__ HCIC_PREAMBLE_SIZE ;
 TYPE_1__* HCI_GET_CMD_BUF (scalar_t__) ;
 int HCI_QOS_SETUP ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 int TRUE ;
 int UINT16_TO_STREAM (scalar_t__*,int ) ;
 int UINT32_TO_STREAM (scalar_t__*,int ) ;
 int UINT8_TO_STREAM (scalar_t__*,scalar_t__) ;
 int btu_hcif_send_cmd (int ,TYPE_1__*) ;

BOOLEAN btsnd_hcic_qos_setup (UINT16 handle, UINT8 flags, UINT8 service_type,
                              UINT32 token_rate, UINT32 peak, UINT32 latency,
                              UINT32 delay_var)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = HCI_GET_CMD_BUF(HCIC_PARAM_SIZE_QOS_SETUP)) == ((void*)0)) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_QOS_SETUP;
    p->offset = 0;

    UINT16_TO_STREAM (pp, HCI_QOS_SETUP);
    UINT8_TO_STREAM (pp, HCIC_PARAM_SIZE_QOS_SETUP);

    UINT16_TO_STREAM (pp, handle);
    UINT8_TO_STREAM (pp, flags);
    UINT8_TO_STREAM (pp, service_type);
    UINT32_TO_STREAM (pp, token_rate);
    UINT32_TO_STREAM (pp, peak);
    UINT32_TO_STREAM (pp, latency);
    UINT32_TO_STREAM (pp, delay_var);

    btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
    return (TRUE);
}
