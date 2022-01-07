
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int remote_bda; scalar_t__ in_use; } ;
typedef TYPE_1__ tBTA_GATTC_CONN ;
typedef scalar_t__ UINT8 ;
struct TYPE_4__ {TYPE_1__* conn_track; } ;


 scalar_t__ BTA_GATTC_CONN_MAX ;
 int BTA_GATT_TRANSPORT_LE ;
 TYPE_2__ bta_gattc_cb ;
 int * bta_gattc_find_clcb_by_cif (scalar_t__,int ,int ) ;
 int bta_gattc_init_clcb_conn (scalar_t__,int ) ;

void bta_gattc_process_listen_all(UINT8 cif)
{
    UINT8 i_conn = 0;
    tBTA_GATTC_CONN *p_conn = &bta_gattc_cb.conn_track[0];

    for (i_conn = 0; i_conn < BTA_GATTC_CONN_MAX; i_conn++, p_conn ++) {
        if (p_conn->in_use ) {
            if (bta_gattc_find_clcb_by_cif(cif, p_conn->remote_bda, BTA_GATT_TRANSPORT_LE) == ((void*)0)) {
                bta_gattc_init_clcb_conn(cif, p_conn->remote_bda);
            }

        }
    }
}
