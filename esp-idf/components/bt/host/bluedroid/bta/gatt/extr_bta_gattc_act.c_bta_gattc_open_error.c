
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_GATTC_DATA ;
struct TYPE_3__ {int transport; int bta_conn_id; int bda; int p_rcb; } ;
typedef TYPE_1__ tBTA_GATTC_CLCB ;


 int APPL_TRACE_ERROR (char*) ;
 int BTA_GATT_OK ;
 int UNUSED (int *) ;
 int bta_gattc_send_open_cback (int ,int ,int ,int ,int ,int ) ;

void bta_gattc_open_error(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    UNUSED(p_data);

    APPL_TRACE_ERROR("Connection already opened. wrong state");

    bta_gattc_send_open_cback(p_clcb->p_rcb,
                              BTA_GATT_OK,
                              p_clcb->bda,
                              p_clcb->bta_conn_id,
                              p_clcb->transport,
                              0);
}
