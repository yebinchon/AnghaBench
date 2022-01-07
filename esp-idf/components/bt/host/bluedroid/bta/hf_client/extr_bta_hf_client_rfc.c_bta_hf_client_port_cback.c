
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_5__ {scalar_t__ conn_handle; } ;
struct TYPE_7__ {TYPE_1__ scb; } ;
struct TYPE_6__ {int event; } ;
typedef TYPE_2__ BT_HDR ;


 int APPL_TRACE_DEBUG (char*,scalar_t__,scalar_t__) ;
 int BTA_HF_CLIENT_RFC_DATA_EVT ;
 int UNUSED (int ) ;
 TYPE_4__ bta_hf_client_cb ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static void bta_hf_client_port_cback(UINT32 code, UINT16 port_handle)
{
    BT_HDR *p_buf;
    UNUSED(code);


    if (port_handle != bta_hf_client_cb.scb.conn_handle) {
        APPL_TRACE_DEBUG("bta_hf_client_port_cback ignoring handle:%d conn_handle = %d",
                         port_handle, bta_hf_client_cb.scb.conn_handle);
        return;
    }

    if ((p_buf = (BT_HDR *) osi_malloc(sizeof(BT_HDR))) != ((void*)0)) {
        p_buf->event = BTA_HF_CLIENT_RFC_DATA_EVT;
        bta_sys_sendmsg(p_buf);
    }
}
