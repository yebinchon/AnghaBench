
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTM_RMT_NAME_CALLBACK ;
struct TYPE_2__ {int ** p_rmt_name_callback; } ;
typedef int BOOLEAN ;


 int BTM_SEC_MAX_RMT_NAME_CALLBACKS ;
 int FALSE ;
 int TRUE ;
 TYPE_1__ btm_cb ;

BOOLEAN BTM_SecAddRmtNameNotifyCallback (tBTM_RMT_NAME_CALLBACK *p_callback)
{
    int i;

    for (i = 0; i < BTM_SEC_MAX_RMT_NAME_CALLBACKS; i++) {
        if (btm_cb.p_rmt_name_callback[i] == ((void*)0)) {
            btm_cb.p_rmt_name_callback[i] = p_callback;
            return (TRUE);
        }
    }
    return (FALSE);
}
