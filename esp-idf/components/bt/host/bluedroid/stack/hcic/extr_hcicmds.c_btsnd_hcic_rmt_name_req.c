
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BDADDR_TO_STREAM (scalar_t__*,int ) ;
 int FALSE ;
 scalar_t__ HCIC_PARAM_SIZE_RMT_NAME_REQ ;
 scalar_t__ HCIC_PREAMBLE_SIZE ;
 TYPE_1__* HCI_GET_CMD_BUF (scalar_t__) ;
 int HCI_RMT_NAME_REQUEST ;
 int TRUE ;
 int UINT16_TO_STREAM (scalar_t__*,int ) ;
 int UINT8_TO_STREAM (scalar_t__*,scalar_t__) ;
 int btm_acl_paging (TYPE_1__*,int ) ;

BOOLEAN btsnd_hcic_rmt_name_req (BD_ADDR bd_addr, UINT8 page_scan_rep_mode,
                                 UINT8 page_scan_mode, UINT16 clock_offset)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = HCI_GET_CMD_BUF(HCIC_PARAM_SIZE_RMT_NAME_REQ)) == ((void*)0)) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_RMT_NAME_REQ;
    p->offset = 0;

    UINT16_TO_STREAM (pp, HCI_RMT_NAME_REQUEST);
    UINT8_TO_STREAM (pp, HCIC_PARAM_SIZE_RMT_NAME_REQ);

    BDADDR_TO_STREAM (pp, bd_addr);
    UINT8_TO_STREAM (pp, page_scan_rep_mode);
    UINT8_TO_STREAM (pp, page_scan_mode);
    UINT16_TO_STREAM (pp, clock_offset);

    btm_acl_paging (p, bd_addr);

    return (TRUE);
}
