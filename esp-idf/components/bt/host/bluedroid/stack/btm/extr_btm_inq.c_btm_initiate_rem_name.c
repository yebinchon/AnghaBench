
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_6__ {int clock_offset; int page_scan_mode; int page_scan_rep_mode; } ;
struct TYPE_7__ {TYPE_1__ results; } ;
typedef TYPE_2__ tBTM_INQ_INFO ;
struct TYPE_8__ {scalar_t__ remname_active; int rmt_name_timer_ent; int remname_bda; int * p_remname_cmpl_cb; } ;
typedef TYPE_3__ tBTM_INQUIRY_VAR_ST ;
typedef int tBTM_CMPL_CB ;
typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_9__ {TYPE_3__ btm_inq_vars; } ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_BUSY ;
 int BTM_CLOCK_OFFSET_VALID ;
 int BTM_CMD_STARTED ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_IsDeviceUp () ;
 int BTM_NO_RESOURCES ;
 scalar_t__ BTM_RMT_NAME_EXT ;
 scalar_t__ BTM_RMT_NAME_SEC ;
 int BTM_WRONG_MODE ;
 int BTU_TTYPE_BTM_RMT_NAME ;
 int HCI_MANDATARY_PAGE_SCAN_MODE ;
 int HCI_PAGE_SCAN_REP_MODE_R1 ;
 scalar_t__ TRUE ;
 TYPE_5__ btm_cb ;
 scalar_t__ btsnd_hcic_rmt_name_req (int ,int ,int ,int ) ;
 int btu_start_timer (int *,int ,int ) ;
 int memcpy (int ,int ,int ) ;

tBTM_STATUS btm_initiate_rem_name (BD_ADDR remote_bda, tBTM_INQ_INFO *p_cur,
                                    UINT8 origin, UINT32 timeout, tBTM_CMPL_CB *p_cb)
{
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;
    BOOLEAN cmd_ok;


    if (!BTM_IsDeviceUp()) {
        return (BTM_WRONG_MODE);
    }

    if (origin == BTM_RMT_NAME_SEC) {
        cmd_ok = btsnd_hcic_rmt_name_req (remote_bda, HCI_PAGE_SCAN_REP_MODE_R1,
                                          HCI_MANDATARY_PAGE_SCAN_MODE, 0);
        if (cmd_ok) {
            return BTM_CMD_STARTED;
        } else {
            return BTM_NO_RESOURCES;
        }
    }

    else if (origin == BTM_RMT_NAME_EXT) {
        if (p_inq->remname_active) {
            return (BTM_BUSY);
        } else {

            p_inq->p_remname_cmpl_cb = p_cb;
            memcpy(p_inq->remname_bda, remote_bda, BD_ADDR_LEN);
            btu_start_timer (&p_inq->rmt_name_timer_ent,
                             BTU_TTYPE_BTM_RMT_NAME,
                             timeout);


            if (p_cur) {
                cmd_ok = btsnd_hcic_rmt_name_req (remote_bda,
                                                  p_cur->results.page_scan_rep_mode,
                                                  p_cur->results.page_scan_mode,
                                                  (UINT16)(p_cur->results.clock_offset |
                                                          BTM_CLOCK_OFFSET_VALID));
            } else {
                cmd_ok = btsnd_hcic_rmt_name_req (remote_bda, HCI_PAGE_SCAN_REP_MODE_R1,
                                                  HCI_MANDATARY_PAGE_SCAN_MODE, 0);
            }
            if (cmd_ok) {
                p_inq->remname_active = TRUE;
                return BTM_CMD_STARTED;
            } else {
                return BTM_NO_RESOURCES;
            }
        }
    } else {
        return BTM_ILLEGAL_VALUE;
    }
}
