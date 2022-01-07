
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tGATT_IF ;
struct TYPE_8__ {int layer_specific; int event; } ;
struct TYPE_9__ {int remote_bda; int client_if; TYPE_1__ hdr; } ;
struct TYPE_10__ {TYPE_2__ enc_cmpl; } ;
typedef TYPE_3__ tBTA_GATTC_DATA ;
struct TYPE_11__ {int bta_conn_id; } ;
typedef TYPE_4__ tBTA_GATTC_CLCB ;
typedef int BD_ADDR ;


 int APPL_TRACE_DEBUG (char*,int ) ;
 int BTA_GATTC_ENC_CMPL_EVT ;
 int BTA_GATT_TRANSPORT_LE ;
 int bdcpy (int ,int ) ;
 TYPE_4__* bta_gattc_find_clcb_by_cif (int ,int ,int ) ;
 int bta_hh_le_is_hh_gatt_if (int ) ;
 int bta_sys_sendmsg (TYPE_3__*) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ osi_calloc (int) ;

__attribute__((used)) static void bta_gattc_enc_cmpl_cback(tGATT_IF gattc_if, BD_ADDR bda)
{
    tBTA_GATTC_DATA *p_buf;
    tBTA_GATTC_CLCB *p_clcb = ((void*)0);

    if ((p_clcb = bta_gattc_find_clcb_by_cif(gattc_if, bda, BTA_GATT_TRANSPORT_LE)) == ((void*)0)) {
        return;
    }
    APPL_TRACE_DEBUG("bta_gattc_enc_cmpl_cback: cif = %d", gattc_if);

    if ((p_buf = (tBTA_GATTC_DATA *) osi_calloc(sizeof(tBTA_GATTC_DATA))) != ((void*)0)) {
        memset(p_buf, 0, sizeof(tBTA_GATTC_DATA));

        p_buf->enc_cmpl.hdr.event = BTA_GATTC_ENC_CMPL_EVT;
        p_buf->enc_cmpl.hdr.layer_specific = p_clcb->bta_conn_id;
        p_buf->enc_cmpl.client_if = gattc_if;
        bdcpy(p_buf->enc_cmpl.remote_bda, bda);

        bta_sys_sendmsg(p_buf);
    }
}
