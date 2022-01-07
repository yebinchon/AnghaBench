
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_3__ {scalar_t__ offset; scalar_t__ len; } ;
typedef TYPE_1__ BT_HDR ;


 scalar_t__ HCIC_PARAM_SIZE_EXT_INQ_RESP ;
 scalar_t__ HCIC_PREAMBLE_SIZE ;
 int HCI_WRITE_EXT_INQ_RESPONSE ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 int UINT16_TO_STREAM (scalar_t__*,int ) ;
 int UINT8_TO_STREAM (scalar_t__*,scalar_t__) ;
 int btu_hcif_send_cmd (int ,TYPE_1__*) ;

void btsnd_hcic_write_ext_inquiry_response (void *buffer, UINT8 fec_req)
{
    BT_HDR *p = (BT_HDR *)buffer;
    UINT8 *pp = (UINT8 *)(p + 1);

    p->len = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_EXT_INQ_RESP;
    p->offset = 0;

    UINT16_TO_STREAM (pp, HCI_WRITE_EXT_INQ_RESPONSE);
    UINT8_TO_STREAM (pp, HCIC_PARAM_SIZE_EXT_INQ_RESP);

    UINT8_TO_STREAM (pp, fec_req);

    btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
}
