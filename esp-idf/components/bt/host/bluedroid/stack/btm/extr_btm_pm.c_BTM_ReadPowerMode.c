
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_PM_MODE ;
struct TYPE_4__ {TYPE_1__* pm_mode_db; } ;
struct TYPE_3__ {int state; } ;
typedef int BD_ADDR ;


 int BTM_SUCCESS ;
 int BTM_UNKNOWN_ADDR ;
 int MAX_L2CAP_LINKS ;
 TYPE_2__ btm_cb ;
 int btm_pm_find_acl_ind (int ) ;

tBTM_STATUS BTM_ReadPowerMode (BD_ADDR remote_bda, tBTM_PM_MODE *p_mode)
{
    int acl_ind;

    if ( (acl_ind = btm_pm_find_acl_ind(remote_bda)) == MAX_L2CAP_LINKS) {
        return (BTM_UNKNOWN_ADDR);
    }

    *p_mode = btm_cb.pm_mode_db[acl_ind].state;
    return BTM_SUCCESS;
}
