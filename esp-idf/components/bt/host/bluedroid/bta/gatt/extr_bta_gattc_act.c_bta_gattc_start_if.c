
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int client_if; } ;
struct TYPE_5__ {TYPE_1__ int_start_if; } ;
typedef TYPE_2__ tBTA_GATTC_DATA ;
typedef int tBTA_GATTC_CB ;


 int APPL_TRACE_ERROR (char*,int ) ;
 int GATT_StartIf (int ) ;
 int UNUSED (int *) ;
 int * bta_gattc_cl_get_regcb (int ) ;

void bta_gattc_start_if(tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    UNUSED(p_cb);

    if (bta_gattc_cl_get_regcb(p_msg->int_start_if.client_if) != ((void*)0) ) {
        GATT_StartIf(p_msg->int_start_if.client_if);
    } else {
        APPL_TRACE_ERROR("Unable to start app.: Unknown interface =%d", p_msg->int_start_if.client_if );
    }
}
