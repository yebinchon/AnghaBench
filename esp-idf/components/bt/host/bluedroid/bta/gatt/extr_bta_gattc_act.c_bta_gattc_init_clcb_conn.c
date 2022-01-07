
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int is_direct; int remote_bda; int client_if; } ;
struct TYPE_9__ {int layer_specific; } ;
struct TYPE_10__ {TYPE_1__ api_conn; TYPE_2__ hdr; } ;
typedef TYPE_3__ tBTA_GATTC_DATA ;
struct TYPE_11__ {int bta_conn_id; } ;
typedef TYPE_4__ tBTA_GATTC_CLCB ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int APPL_TRACE_ERROR (char*) ;
 int BD_ADDR_LEN ;
 int BTA_GATTC_API_OPEN_EVT ;
 int BTA_GATT_TRANSPORT_LE ;
 scalar_t__ FALSE ;
 scalar_t__ GATT_GetConnIdIfConnected (int ,int ,int *,int ) ;
 int TRUE ;
 TYPE_4__* bta_gattc_clcb_alloc (int ,int ,int ) ;
 int bta_gattc_sm_execute (TYPE_4__*,int ,TYPE_3__*) ;
 int memcpy (int ,int ,int ) ;

void bta_gattc_init_clcb_conn(UINT8 cif, BD_ADDR remote_bda)
{
    tBTA_GATTC_CLCB *p_clcb = ((void*)0);
    tBTA_GATTC_DATA gattc_data;
    UINT16 conn_id;


    if (GATT_GetConnIdIfConnected(cif, remote_bda, &conn_id, BTA_GATT_TRANSPORT_LE) == FALSE) {
        APPL_TRACE_ERROR("bta_gattc_init_clcb_conn ERROR: not a connected device");
        return;
    }


    if ((p_clcb = bta_gattc_clcb_alloc(cif, remote_bda, BTA_GATT_TRANSPORT_LE)) != ((void*)0)) {
        gattc_data.hdr.layer_specific = p_clcb->bta_conn_id = conn_id;

        gattc_data.api_conn.client_if = cif;
        memcpy(gattc_data.api_conn.remote_bda, remote_bda, BD_ADDR_LEN);
        gattc_data.api_conn.is_direct = TRUE;

        bta_gattc_sm_execute(p_clcb, BTA_GATTC_API_OPEN_EVT, &gattc_data);
    } else {
        APPL_TRACE_ERROR("No resources");
    }
}
