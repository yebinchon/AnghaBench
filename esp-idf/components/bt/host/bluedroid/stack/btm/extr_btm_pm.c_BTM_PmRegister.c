
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_PM_STATUS_CBACK ;
typedef int UINT8 ;
struct TYPE_4__ {TYPE_1__* pm_reg_db; } ;
struct TYPE_3__ {int mask; int * cback; } ;


 int BTM_ILLEGAL_VALUE ;
 int BTM_MAX_PM_RECORDS ;
 int BTM_NO_RESOURCES ;
 int BTM_PM_DEREG ;
 int BTM_PM_REC_NOT_USED ;
 int BTM_PM_REG_NOTIF ;
 int BTM_SUCCESS ;
 TYPE_2__ btm_cb ;

tBTM_STATUS BTM_PmRegister (UINT8 mask, UINT8 *p_pm_id, tBTM_PM_STATUS_CBACK *p_cb)
{
    int xx;


    if (mask & BTM_PM_DEREG) {
        if (*p_pm_id >= BTM_MAX_PM_RECORDS) {
            return BTM_ILLEGAL_VALUE;
        }
        btm_cb.pm_reg_db[*p_pm_id].mask = BTM_PM_REC_NOT_USED;
        return BTM_SUCCESS;
    }

    for (xx = 0; xx < BTM_MAX_PM_RECORDS; xx++) {

        if (btm_cb.pm_reg_db[xx].mask == BTM_PM_REC_NOT_USED) {

            if (mask & BTM_PM_REG_NOTIF) {
                if (p_cb == ((void*)0)) {
                    return BTM_ILLEGAL_VALUE;
                }
                btm_cb.pm_reg_db[xx].cback = p_cb;
            }
            btm_cb.pm_reg_db[xx].mask = mask;
            *p_pm_id = xx;
            return BTM_SUCCESS;
        }
    }

    return BTM_NO_RESOURCES;
}
