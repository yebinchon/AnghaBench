
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int hw_module; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_SYS_HW_MSG ;
struct TYPE_7__ {int disabling; } ;
typedef int TIMER_LIST_ENT ;


 int BTA_SYS_API_DISABLE_EVT ;
 int BTA_SYS_HW_BLUETOOTH ;
 int FALSE ;
 int UNUSED (int *) ;
 TYPE_4__ bta_dm_cb ;
 int bta_dm_disable_pm () ;
 int bta_dm_sys_hw_cback ;
 int bta_sys_hw_register (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static void bta_dm_disable_conn_down_timer_cback (TIMER_LIST_ENT *p_tle)
{
    UNUSED(p_tle);
    tBTA_SYS_HW_MSG *sys_enable_event;



    bta_dm_disable_pm();



    bta_sys_hw_register( BTA_SYS_HW_BLUETOOTH, bta_dm_sys_hw_cback );


    if ((sys_enable_event = (tBTA_SYS_HW_MSG *) osi_malloc(sizeof(tBTA_SYS_HW_MSG))) != ((void*)0)) {
        sys_enable_event->hdr.event = BTA_SYS_API_DISABLE_EVT;
        sys_enable_event->hw_module = BTA_SYS_HW_BLUETOOTH;
        bta_sys_sendmsg(sys_enable_event);
    }

    bta_dm_cb.disabling = FALSE;

}
