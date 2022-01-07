
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tBTA_GATTC_DATA ;
struct TYPE_7__ {TYPE_1__* p_rcb; } ;
typedef TYPE_2__ tBTA_GATTC_CLCB ;
struct TYPE_8__ {int status; } ;
typedef TYPE_3__ tBTA_GATTC ;
struct TYPE_6__ {int (* p_cback ) (int ,TYPE_3__*) ;} ;


 int BTA_GATTC_CANCEL_OPEN_EVT ;
 int BTA_GATT_ERROR ;
 int UNUSED (int *) ;
 int stub1 (int ,TYPE_3__*) ;

void bta_gattc_cancel_open_error(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATTC cb_data;
    UNUSED(p_data);

    cb_data.status = BTA_GATT_ERROR;

    if ( p_clcb && p_clcb->p_rcb && p_clcb->p_rcb->p_cback ) {
        (*p_clcb->p_rcb->p_cback)(BTA_GATTC_CANCEL_OPEN_EVT, &cb_data);
    }
}
