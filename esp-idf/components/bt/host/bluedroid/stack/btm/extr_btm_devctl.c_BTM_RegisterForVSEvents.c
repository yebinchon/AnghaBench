
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_VS_EVT_CB ;
typedef int tBTM_STATUS ;
typedef size_t UINT8 ;
struct TYPE_3__ {int ** p_vend_spec_cb; } ;
struct TYPE_4__ {TYPE_1__ devcb; } ;
typedef scalar_t__ BOOLEAN ;


 size_t BTM_MAX_VSE_CALLBACKS ;
 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_TRACE_EVENT (char*) ;
 scalar_t__ FALSE ;
 TYPE_2__ btm_cb ;

tBTM_STATUS BTM_RegisterForVSEvents (tBTM_VS_EVT_CB *p_cb, BOOLEAN is_register)
{
    tBTM_STATUS retval = BTM_SUCCESS;
    UINT8 i, free_idx = BTM_MAX_VSE_CALLBACKS;


    for (i = 0; i < BTM_MAX_VSE_CALLBACKS; i++) {
        if (btm_cb.devcb.p_vend_spec_cb[i] == ((void*)0)) {

            free_idx = i;
        } else if (btm_cb.devcb.p_vend_spec_cb[i] == p_cb) {

            if (is_register == FALSE) {
                btm_cb.devcb.p_vend_spec_cb[i] = ((void*)0);
                BTM_TRACE_EVENT("BTM Deregister For VSEvents is successfully");
            }
            return (BTM_SUCCESS);
        }
    }


    if (is_register) {
        if (free_idx < BTM_MAX_VSE_CALLBACKS) {
            btm_cb.devcb.p_vend_spec_cb[free_idx] = p_cb;
            BTM_TRACE_EVENT("BTM Register For VSEvents is successfully");
        } else {

            BTM_TRACE_ERROR ("BTM_RegisterForVSEvents: too many callbacks registered");

            retval = BTM_NO_RESOURCES;
        }
    }

    return (retval);
}
