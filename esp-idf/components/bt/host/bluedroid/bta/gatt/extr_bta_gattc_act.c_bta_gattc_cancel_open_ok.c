
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tBTA_GATTC_DATA ;
struct TYPE_8__ {TYPE_1__* p_rcb; } ;
typedef TYPE_2__ tBTA_GATTC_CLCB ;
struct TYPE_9__ {int status; } ;
typedef TYPE_3__ tBTA_GATTC ;
struct TYPE_7__ {int (* p_cback ) (int ,TYPE_3__*) ;} ;


 int BTA_GATTC_CANCEL_OPEN_EVT ;
 int BTA_GATT_OK ;
 int UNUSED (int *) ;
 int bta_gattc_clcb_dealloc (TYPE_2__*) ;
 int stub1 (int ,TYPE_3__*) ;

void bta_gattc_cancel_open_ok(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATTC cb_data;
    UNUSED(p_data);

    if ( p_clcb->p_rcb->p_cback ) {
        cb_data.status = BTA_GATT_OK;
        (*p_clcb->p_rcb->p_cback)(BTA_GATTC_CANCEL_OPEN_EVT, &cb_data);
    }

    bta_gattc_clcb_dealloc(p_clcb);
}
