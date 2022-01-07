
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int (* tBTM_PM_STATUS_CBACK ) (int ,int ,int ,int ) ;
struct TYPE_6__ {size_t pm_pend_id; size_t pm_pend_link; TYPE_1__* acl_db; TYPE_2__* pm_reg_db; } ;
struct TYPE_5__ {int mask; int (* cback ) (int ,int ,int ,int ) ;} ;
struct TYPE_4__ {int remote_addr; } ;


 int BTM_DEV_RESET ;
 int BTM_MAX_PM_RECORDS ;
 int BTM_PM_REC_NOT_USED ;
 int BTM_PM_REG_NOTIF ;
 size_t BTM_PM_SET_ONLY_ID ;
 int BTM_PM_STS_ERROR ;
 size_t MAX_L2CAP_LINKS ;
 TYPE_3__ btm_cb ;
 int stub1 (int ,int ,int ,int ) ;

void btm_pm_reset(void)
{
    int xx;
    tBTM_PM_STATUS_CBACK *cb = ((void*)0);


    if ( (btm_cb.pm_pend_id != BTM_PM_SET_ONLY_ID) &&
            (btm_cb.pm_reg_db[btm_cb.pm_pend_id].mask & BTM_PM_REG_NOTIF) ) {
        cb = btm_cb.pm_reg_db[btm_cb.pm_pend_id].cback;
    }



    for (xx = 0; xx < BTM_MAX_PM_RECORDS; xx++) {
        btm_cb.pm_reg_db[xx].mask = BTM_PM_REC_NOT_USED;
    }

    if (cb != ((void*)0) && btm_cb.pm_pend_link < MAX_L2CAP_LINKS) {
        (*cb)(btm_cb.acl_db[btm_cb.pm_pend_link].remote_addr, BTM_PM_STS_ERROR, BTM_DEV_RESET, 0);
    }


    btm_cb.pm_pend_link = MAX_L2CAP_LINKS;
}
