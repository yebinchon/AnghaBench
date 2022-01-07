
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_3__ {int offset; scalar_t__ len; } ;
typedef TYPE_1__ BT_HDR ;


 int ARRAY_TO_STREAM (scalar_t__*,scalar_t__*,scalar_t__) ;
 scalar_t__ HCIC_PREAMBLE_SIZE ;
 int HCI_GRP_VENDOR_SPECIFIC ;
 int LOCAL_BR_EDR_CONTROLLER_ID ;
 int UINT16_TO_STREAM (scalar_t__*,int) ;
 int UINT8_TO_STREAM (scalar_t__*,scalar_t__) ;
 int btu_hcif_send_cmd (int ,TYPE_1__*) ;

void btsnd_hcic_vendor_spec_cmd (void *buffer, UINT16 opcode, UINT8 len,
                                 UINT8 *p_data, void *p_cmd_cplt_cback)
{
    BT_HDR *p = (BT_HDR *)buffer;
    UINT8 *pp = (UINT8 *)(p + 1);

    p->len = HCIC_PREAMBLE_SIZE + len;
    p->offset = sizeof(void *);

    *((void **)pp) = p_cmd_cplt_cback;
    pp += sizeof(void *);

    UINT16_TO_STREAM (pp, HCI_GRP_VENDOR_SPECIFIC | opcode);
    UINT8_TO_STREAM (pp, len);
    ARRAY_TO_STREAM (pp, p_data, len);

    btu_hcif_send_cmd (LOCAL_BR_EDR_CONTROLLER_ID, p);
}
