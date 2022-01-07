
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_GATTC_DATA ;
struct TYPE_3__ {int auto_update; int status; } ;
typedef TYPE_1__ tBTA_GATTC_CLCB ;


 int BTA_GATTC_DISC_WAITING ;
 int BTA_GATT_CANCEL ;
 int UNUSED (int *) ;

void bta_gattc_restart_discover(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    UNUSED(p_data);

    p_clcb->status = BTA_GATT_CANCEL;
    p_clcb->auto_update = BTA_GATTC_DISC_WAITING;
}
