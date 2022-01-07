
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_1__ enable; } ;
typedef TYPE_2__ tBTA_DM_SEC ;
typedef int UINT8 ;
struct TYPE_7__ {int (* p_sec_cback ) (int ,TYPE_2__*) ;} ;


 int BTA_DM_ENABLE_EVT ;
 int BTA_SUCCESS ;
 int UNUSED (int *) ;
 TYPE_4__ bta_dm_cb ;
 int stub1 (int ,TYPE_2__*) ;

__attribute__((used)) static void bta_dm_local_name_cback(UINT8 *p_name)
{
    tBTA_DM_SEC sec_event;
    UNUSED(p_name);

    sec_event.enable.status = BTA_SUCCESS;

    if (bta_dm_cb.p_sec_cback) {
        bta_dm_cb.p_sec_cback(BTA_DM_ENABLE_EVT, &sec_event);
    }

}
