
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ hci_status; scalar_t__ link_quality; int status; int rem_bda; } ;
typedef TYPE_2__ tBTM_LINK_QUALITY_RESULTS ;
typedef int (* tBTM_CMPL_CB ) (TYPE_2__*) ;
struct TYPE_9__ {scalar_t__ hci_handle; int remote_addr; scalar_t__ in_use; } ;
typedef TYPE_4__ tACL_CONN ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_7__ {int (* p_lnk_qual_cmpl_cb ) (TYPE_2__*) ;int lnk_quality_timer; } ;
struct TYPE_10__ {TYPE_1__ devcb; TYPE_4__* acl_db; } ;


 int BD_ADDR_LEN ;
 int BTM_ERR_PROCESSING ;
 int BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*,...) ;
 scalar_t__ HCI_SUCCESS ;
 scalar_t__ MAX_L2CAP_LINKS ;
 int STREAM_TO_UINT16 (scalar_t__,int *) ;
 int STREAM_TO_UINT8 (scalar_t__,int *) ;
 TYPE_6__ btm_cb ;
 int btu_stop_timer (int *) ;
 int memcpy (int ,int ,int ) ;
 int stub1 (TYPE_2__*) ;

void btm_read_link_quality_complete (UINT8 *p)
{
    tBTM_CMPL_CB *p_cb = btm_cb.devcb.p_lnk_qual_cmpl_cb;
    tBTM_LINK_QUALITY_RESULTS results;
    UINT16 handle;
    tACL_CONN *p_acl_cb = &btm_cb.acl_db[0];
    UINT16 index;
    BTM_TRACE_DEBUG ("btm_read_link_quality_complete\n");
    btu_stop_timer (&btm_cb.devcb.lnk_quality_timer);


    btm_cb.devcb.p_lnk_qual_cmpl_cb = ((void*)0);

    if (p_cb) {
        STREAM_TO_UINT8 (results.hci_status, p);

        if (results.hci_status == HCI_SUCCESS) {
            results.status = BTM_SUCCESS;

            STREAM_TO_UINT16 (handle, p);

            STREAM_TO_UINT8 (results.link_quality, p);
            BTM_TRACE_DEBUG ("BTM Link Quality Complete: Link Quality %d, hci status 0x%02x\n",
                             results.link_quality, results.hci_status);


            for (index = 0; index < MAX_L2CAP_LINKS; index++, p_acl_cb++) {
                if ((p_acl_cb->in_use) && (handle == p_acl_cb->hci_handle)) {
                    memcpy (results.rem_bda, p_acl_cb->remote_addr, BD_ADDR_LEN);
                    break;
                }
            }
        } else {
            results.status = BTM_ERR_PROCESSING;
        }

        (*p_cb)(&results);
    }
}
