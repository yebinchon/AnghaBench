
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
typedef TYPE_1__ tBTM_PM_MCB ;
typedef size_t UINT8 ;
struct TYPE_5__ {TYPE_1__* pm_mode_db; } ;


 int BTM_PM_ST_ACTIVE ;
 int BTM_TRACE_DEBUG (char*,size_t,int ) ;
 TYPE_3__ btm_cb ;
 int memset (TYPE_1__*,int ,int) ;

void btm_pm_sm_alloc(UINT8 ind)
{
    tBTM_PM_MCB *p_db = &btm_cb.pm_mode_db[ind];
    memset (p_db, 0, sizeof(tBTM_PM_MCB));
    p_db->state = BTM_PM_ST_ACTIVE;

    BTM_TRACE_DEBUG( "btm_pm_sm_alloc ind:%d st:%d", ind, p_db->state);

}
