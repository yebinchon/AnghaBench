
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int notif_type; int * bd_addr; } ;
typedef TYPE_2__ tBTM_SP_KEYPRESS ;
typedef int tBTM_SP_EVT_DATA ;
typedef int UINT8 ;
struct TYPE_4__ {int (* p_sp_callback ) (int ,int *) ;} ;
struct TYPE_6__ {TYPE_1__ api; } ;


 int BTM_SP_KEYPRESS_EVT ;
 int STREAM_TO_BDADDR (int *,int *) ;
 TYPE_3__ btm_cb ;
 int stub1 (int ,int *) ;

void btm_keypress_notif_evt (UINT8 *p)
{
    tBTM_SP_KEYPRESS evt_data;
    UINT8 *p_bda;


    if (btm_cb.api.p_sp_callback) {
        p_bda = evt_data.bd_addr;

        STREAM_TO_BDADDR (p_bda, p);
        evt_data.notif_type = *p;

        (*btm_cb.api.p_sp_callback) (BTM_SP_KEYPRESS_EVT, (tBTM_SP_EVT_DATA *)&evt_data);
    }
}
