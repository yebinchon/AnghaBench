
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ conn_handle; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
struct TYPE_7__ {int layer_specific; int event; } ;
struct TYPE_9__ {TYPE_1__ hdr; } ;
typedef TYPE_3__ tBTA_AG_RFC ;
typedef int tBTA_AG_DATA ;


 int BTA_AG_RFC_CLOSE_EVT ;
 int RFCOMM_RemoveConnection (scalar_t__) ;
 int UNUSED (int *) ;
 int bta_ag_scb_to_idx (TYPE_2__*) ;
 int bta_sys_sendmsg (TYPE_3__*) ;
 scalar_t__ osi_malloc (int) ;

void bta_ag_rfc_do_close(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    tBTA_AG_RFC *p_buf;
    UNUSED(p_data);

    if (p_scb->conn_handle) {
        RFCOMM_RemoveConnection(p_scb->conn_handle);
    } else {



        if ((p_buf = (tBTA_AG_RFC *) osi_malloc(sizeof(tBTA_AG_RFC))) != ((void*)0)) {
            p_buf->hdr.event = BTA_AG_RFC_CLOSE_EVT;
            p_buf->hdr.layer_specific = bta_ag_scb_to_idx(p_scb);
            bta_sys_sendmsg(p_buf);
        }







    }
}
