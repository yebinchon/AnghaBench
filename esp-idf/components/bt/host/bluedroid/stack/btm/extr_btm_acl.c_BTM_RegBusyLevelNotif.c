
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_BL_EVENT_MASK ;
typedef int tBTM_BL_CHANGE_CB ;
typedef int UINT8 ;
struct TYPE_2__ {int * p_bl_changed_cb; int bl_evt_mask; int busy_level; } ;


 int BTM_BUSY ;
 int BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*) ;
 TYPE_1__ btm_cb ;

tBTM_STATUS BTM_RegBusyLevelNotif (tBTM_BL_CHANGE_CB *p_cb, UINT8 *p_level,
                                   tBTM_BL_EVENT_MASK evt_mask)
{
    BTM_TRACE_DEBUG ("BTM_RegBusyLevelNotif\n");
    if (p_level) {
        *p_level = btm_cb.busy_level;
    }

    btm_cb.bl_evt_mask = evt_mask;

    if (!p_cb) {
        btm_cb.p_bl_changed_cb = ((void*)0);
    } else if (btm_cb.p_bl_changed_cb) {
        return (BTM_BUSY);
    } else {
        btm_cb.p_bl_changed_cb = p_cb;
    }

    return (BTM_SUCCESS);
}
