
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int event; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
typedef TYPE_3__ tBTA_HF_CLIENT_RFC ;
typedef int tBTA_HF_CLIENT_DATA ;
struct TYPE_7__ {scalar_t__ p_disc_db; scalar_t__ conn_handle; } ;
struct TYPE_9__ {TYPE_2__ scb; } ;


 int BTA_HF_CLIENT_RFC_CLOSE_EVT ;
 int RFCOMM_RemoveConnection (scalar_t__) ;
 int SDP_CancelServiceSearch (scalar_t__) ;
 int UNUSED (int *) ;
 TYPE_5__ bta_hf_client_cb ;
 int bta_hf_client_free_db (int *) ;
 int bta_sys_sendmsg (TYPE_3__*) ;
 scalar_t__ osi_malloc (int) ;

void bta_hf_client_rfc_do_close(tBTA_HF_CLIENT_DATA *p_data)
{
    tBTA_HF_CLIENT_RFC *p_buf;
    UNUSED(p_data);

    if (bta_hf_client_cb.scb.conn_handle) {
        RFCOMM_RemoveConnection(bta_hf_client_cb.scb.conn_handle);
    } else {



        if ((p_buf = (tBTA_HF_CLIENT_RFC *) osi_malloc(sizeof(tBTA_HF_CLIENT_RFC))) != ((void*)0)) {
            p_buf->hdr.event = BTA_HF_CLIENT_RFC_CLOSE_EVT;
            bta_sys_sendmsg(p_buf);
        }


        if (bta_hf_client_cb.scb.p_disc_db) {
            (void)SDP_CancelServiceSearch (bta_hf_client_cb.scb.p_disc_db);
            bta_hf_client_free_db(((void*)0));
        }
    }
}
