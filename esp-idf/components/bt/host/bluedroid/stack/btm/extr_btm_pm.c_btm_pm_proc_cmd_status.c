
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTM_PM_STATUS ;
struct TYPE_7__ {int state; } ;
typedef TYPE_3__ tBTM_PM_MCB ;
typedef int UINT8 ;
struct TYPE_8__ {size_t pm_pend_link; size_t pm_pend_id; TYPE_2__* acl_db; TYPE_1__* pm_reg_db; TYPE_3__* pm_mode_db; } ;
struct TYPE_6__ {int remote_addr; } ;
struct TYPE_5__ {int mask; int (* cback ) (int ,int ,int ,int ) ;} ;


 int BTM_PM_REG_NOTIF ;
 size_t BTM_PM_SET_ONLY_ID ;
 int BTM_PM_STS_ERROR ;
 int BTM_PM_STS_PENDING ;
 int BTM_PM_ST_PENDING ;
 int BTM_TRACE_DEBUG (char*,int ,...) ;
 int HCI_SUCCESS ;
 size_t MAX_L2CAP_LINKS ;
 TYPE_4__ btm_cb ;
 int btm_pm_check_stored () ;
 int stub1 (int ,int ,int ,int ) ;

void btm_pm_proc_cmd_status(UINT8 status)
{
    tBTM_PM_MCB *p_cb;
    tBTM_PM_STATUS pm_status;

    if (btm_cb.pm_pend_link >= MAX_L2CAP_LINKS) {
        return;
    }

    p_cb = &btm_cb.pm_mode_db[btm_cb.pm_pend_link];

    if (status == HCI_SUCCESS) {
        p_cb->state = BTM_PM_ST_PENDING;
        pm_status = BTM_PM_STS_PENDING;

        BTM_TRACE_DEBUG( "btm_pm_proc_cmd_status new state:0x%x", p_cb->state);

    } else {
        pm_status = BTM_PM_STS_ERROR;
    }


    if ( (btm_cb.pm_pend_id != BTM_PM_SET_ONLY_ID) &&
            (btm_cb.pm_reg_db[btm_cb.pm_pend_id].mask & BTM_PM_REG_NOTIF) ) {
        (*btm_cb.pm_reg_db[btm_cb.pm_pend_id].cback)(btm_cb.acl_db[btm_cb.pm_pend_link].remote_addr, pm_status, 0, status);
    }



    BTM_TRACE_DEBUG( "btm_pm_proc_cmd_status state:0x%x, pm_pend_link: %d(new: %d)",
                     p_cb->state, btm_cb.pm_pend_link, MAX_L2CAP_LINKS);

    btm_cb.pm_pend_link = MAX_L2CAP_LINKS;

    btm_pm_check_stored();
}
