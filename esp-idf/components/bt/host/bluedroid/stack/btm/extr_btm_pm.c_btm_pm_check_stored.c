
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pm_mode_db; } ;
struct TYPE_3__ {int state; } ;


 int BTM_PM_SET_ONLY_ID ;
 int BTM_PM_STORED_MASK ;
 int BTM_TRACE_DEBUG (char*,int) ;
 int MAX_L2CAP_LINKS ;
 TYPE_2__ btm_cb ;
 int btm_pm_snd_md_req (int ,int,int *) ;

__attribute__((used)) static void btm_pm_check_stored(void)
{
    int xx;
    for (xx = 0; xx < MAX_L2CAP_LINKS; xx++) {
        if (btm_cb.pm_mode_db[xx].state & BTM_PM_STORED_MASK) {
            btm_cb.pm_mode_db[xx].state &= ~BTM_PM_STORED_MASK;
            BTM_TRACE_DEBUG( "btm_pm_check_stored :%d", xx);
            btm_pm_snd_md_req(BTM_PM_SET_ONLY_ID, xx, ((void*)0));
            break;
        }
    }
}
