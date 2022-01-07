
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;
typedef scalar_t__ BD_NAME ;


 int ARRAY_TO_STREAM (int *,scalar_t__,scalar_t__) ;
 int FALSE ;
 scalar_t__ HCIC_PARAM_SIZE_CHANGE_NAME ;
 scalar_t__ HCIC_PREAMBLE_SIZE ;
 int HCI_CHANGE_LOCAL_NAME ;
 TYPE_1__* HCI_GET_CMD_BUF (scalar_t__) ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 int TRUE ;
 int UINT16_TO_STREAM (int *,int ) ;
 int UINT8_TO_STREAM (int *,scalar_t__) ;
 int btu_hcif_send_cmd (int ,TYPE_1__*) ;
 int memset (int *,int ,scalar_t__) ;
 scalar_t__ strlen (char*) ;

BOOLEAN btsnd_hcic_change_name (BD_NAME name)
{
    BT_HDR *p;
    UINT8 *pp;
    UINT16 len = strlen ((char *)name) + 1;

    if ((p = HCI_GET_CMD_BUF(HCIC_PARAM_SIZE_CHANGE_NAME)) == ((void*)0)) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);
    memset(pp, 0, HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_CHANGE_NAME);

    p->len = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_CHANGE_NAME;
    p->offset = 0;

    UINT16_TO_STREAM (pp, HCI_CHANGE_LOCAL_NAME);
    UINT8_TO_STREAM (pp, HCIC_PARAM_SIZE_CHANGE_NAME);

    if (len > HCIC_PARAM_SIZE_CHANGE_NAME) {
        len = HCIC_PARAM_SIZE_CHANGE_NAME;
    }

    ARRAY_TO_STREAM (pp, name, len);

    btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
    return (TRUE);
}
