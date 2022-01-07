
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_GATTC_DATA ;
struct TYPE_4__ {int transport; int bta_conn_id; int bda; int p_rcb; } ;
typedef TYPE_1__ tBTA_GATTC_CLCB ;


 int BTA_GATT_ERROR ;
 int UNUSED (int *) ;
 int bta_gattc_clcb_dealloc (TYPE_1__*) ;
 int bta_gattc_send_open_cback (int ,int ,int ,int ,int ,int ) ;

void bta_gattc_open_fail(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    UNUSED(p_data);

    bta_gattc_send_open_cback(p_clcb->p_rcb,
                              BTA_GATT_ERROR,
                              p_clcb->bda,
                              p_clcb->bta_conn_id,
                              p_clcb->transport,
                              0);

    bta_gattc_clcb_dealloc(p_clcb);
}
