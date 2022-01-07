
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef void* UINT16 ;
struct TYPE_4__ {void* len; scalar_t__ offset; } ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;


 int ARRAY_TO_STREAM (int*,int*,int) ;
 int BDADDR_TO_STREAM (int*,int*) ;
 int BD_ADDR_LEN ;
 int DEVCLASS_TO_STREAM (int*,int*) ;
 int DEV_CLASS_LEN ;
 int FALSE ;
 int HCIC_PREAMBLE_SIZE ;
 int HCI_FILTER_COND_BD_ADDR ;
 int HCI_FILTER_COND_DEVICE_CLASS ;
 TYPE_1__* HCI_GET_CMD_BUF (int) ;
 int HCI_SET_EVENT_FILTER ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 int TRUE ;
 int UINT16_TO_STREAM (int*,int ) ;
 int UINT8_TO_STREAM (int*,int) ;
 int btu_hcif_send_cmd (int ,TYPE_1__*) ;

BOOLEAN btsnd_hcic_set_event_filter (UINT8 filt_type, UINT8 filt_cond_type,
                                     UINT8 *filt_cond, UINT8 filt_cond_len)
{
    BT_HDR *p;
    UINT8 *pp;


    if ((p = HCI_GET_CMD_BUF(2 + filt_cond_len)) == ((void*)0)) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->offset = 0;

    UINT16_TO_STREAM (pp, HCI_SET_EVENT_FILTER);

    if (filt_type) {
        p->len = (UINT16)(HCIC_PREAMBLE_SIZE + 2 + filt_cond_len);
        UINT8_TO_STREAM (pp, (UINT8)(2 + filt_cond_len));

        UINT8_TO_STREAM (pp, filt_type);
        UINT8_TO_STREAM (pp, filt_cond_type);

        if (filt_cond_type == HCI_FILTER_COND_DEVICE_CLASS) {
            DEVCLASS_TO_STREAM (pp, filt_cond);
            filt_cond += DEV_CLASS_LEN;
            DEVCLASS_TO_STREAM (pp, filt_cond);
            filt_cond += DEV_CLASS_LEN;

            filt_cond_len -= (2 * DEV_CLASS_LEN);
        } else if (filt_cond_type == HCI_FILTER_COND_BD_ADDR) {
            BDADDR_TO_STREAM (pp, filt_cond);
            filt_cond += BD_ADDR_LEN;

            filt_cond_len -= BD_ADDR_LEN;
        }

        if (filt_cond_len) {
            ARRAY_TO_STREAM (pp, filt_cond, filt_cond_len);
        }
    } else {
        p->len = (UINT16)(HCIC_PREAMBLE_SIZE + 1);
        UINT8_TO_STREAM (pp, 1);

        UINT8_TO_STREAM (pp, filt_type);
    }

    btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
    return (TRUE);
}
