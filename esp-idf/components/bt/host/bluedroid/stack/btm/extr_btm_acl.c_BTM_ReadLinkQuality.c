
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_CMPL_CB ;
struct TYPE_6__ {int hci_handle; } ;
typedef TYPE_2__ tACL_CONN ;
struct TYPE_5__ {int * p_lnk_qual_cmpl_cb; int lnk_quality_timer; } ;
struct TYPE_7__ {TYPE_1__ devcb; } ;
typedef int * BD_ADDR ;


 int BTM_BUSY ;
 int BTM_CMD_STARTED ;
 int BTM_DEV_REPLY_TIMEOUT ;
 int BTM_NO_RESOURCES ;
 int BTM_TRACE_API (char*,int ,int ,int ,int ,int ,int ) ;
 int BTM_UNKNOWN_ADDR ;
 int BTU_TTYPE_BTM_ACL ;
 int BT_TRANSPORT_BR_EDR ;
 TYPE_2__* btm_bda_to_acl (int *,int ) ;
 TYPE_3__ btm_cb ;
 int btsnd_hcic_get_link_quality (int ) ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;

tBTM_STATUS BTM_ReadLinkQuality (BD_ADDR remote_bda, tBTM_CMPL_CB *p_cb)
{
    tACL_CONN *p;

    BTM_TRACE_API ("BTM_ReadLinkQuality: RemBdAddr: %02x%02x%02x%02x%02x%02x\n",
                   remote_bda[0], remote_bda[1], remote_bda[2],
                   remote_bda[3], remote_bda[4], remote_bda[5]);


    if (btm_cb.devcb.p_lnk_qual_cmpl_cb) {
        return (BTM_BUSY);
    }

    p = btm_bda_to_acl(remote_bda, BT_TRANSPORT_BR_EDR);
    if (p != (tACL_CONN *)((void*)0)) {
        btu_start_timer (&btm_cb.devcb.lnk_quality_timer, BTU_TTYPE_BTM_ACL,
                         BTM_DEV_REPLY_TIMEOUT);
        btm_cb.devcb.p_lnk_qual_cmpl_cb = p_cb;

        if (!btsnd_hcic_get_link_quality (p->hci_handle)) {
            btu_stop_timer (&btm_cb.devcb.lnk_quality_timer);
            btm_cb.devcb.p_lnk_qual_cmpl_cb = ((void*)0);
            return (BTM_NO_RESOURCES);
        } else {
            return (BTM_CMD_STARTED);
        }
    }


    return (BTM_UNKNOWN_ADDR);
}
