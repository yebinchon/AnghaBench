
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_GATTC_RCB ;
struct TYPE_5__ {int layer_specific; } ;
struct TYPE_6__ {int conn_params; TYPE_1__ hdr; int remote_bda; } ;
struct TYPE_7__ {TYPE_2__ int_conn; } ;
typedef TYPE_3__ tBTA_GATTC_DATA ;


 int bta_gattc_send_connect_cback (int *,int ,int ,int ) ;

void bta_gattc_conncback(tBTA_GATTC_RCB *p_rcb, tBTA_GATTC_DATA *p_data)
{
    if (p_rcb) {
        bta_gattc_send_connect_cback(p_rcb,
                                     p_data->int_conn.remote_bda,
                                     p_data->int_conn.hdr.layer_specific, p_data->int_conn.conn_params);

    }
}
