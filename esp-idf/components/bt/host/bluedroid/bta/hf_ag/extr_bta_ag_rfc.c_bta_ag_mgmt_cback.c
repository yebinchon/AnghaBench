
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ conn_handle; scalar_t__* serv_handle; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
struct TYPE_6__ {scalar_t__ layer_specific; scalar_t__ event; } ;
struct TYPE_8__ {scalar_t__ port_handle; TYPE_1__ hdr; } ;
typedef TYPE_3__ tBTA_AG_RFC ;
typedef size_t UINT8 ;
typedef scalar_t__ UINT32 ;
typedef scalar_t__ UINT16 ;
typedef int BOOLEAN ;


 int APPL_TRACE_DEBUG (char*,scalar_t__,...) ;
 int APPL_TRACE_ERROR (char*,scalar_t__) ;
 size_t BTA_AG_NUM_IDX ;
 scalar_t__ BTA_AG_RFC_CLOSE_EVT ;
 scalar_t__ BTA_AG_RFC_OPEN_EVT ;
 scalar_t__ BTA_AG_RFC_SRV_CLOSE_EVT ;
 int FALSE ;
 scalar_t__ PORT_SUCCESS ;
 int TRUE ;
 TYPE_2__* bta_ag_scb_by_idx (scalar_t__) ;
 int bta_sys_sendmsg (TYPE_3__*) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static void bta_ag_mgmt_cback(UINT32 code, UINT16 port_handle, UINT16 handle)
{
    tBTA_AG_RFC *p_buf;
    tBTA_AG_SCB *p_scb;
    UINT16 event;
    UINT8 i;
    BOOLEAN found_handle = FALSE;

    APPL_TRACE_DEBUG("ag_mgmt_cback : code = %d, port_handle = %d, handle = %d",
                        code, port_handle, handle);

    if ((p_scb = bta_ag_scb_by_idx(handle)) != ((void*)0)) {

        if ((code != PORT_SUCCESS) && (port_handle != p_scb->conn_handle)) {
            APPL_TRACE_DEBUG("ag_mgmt_cback ignoring handle:%d", port_handle);
            return;
        }

        if (code == PORT_SUCCESS) {
            if (p_scb->conn_handle) {

                if (port_handle == p_scb->conn_handle)
                    found_handle = TRUE;
            } else {

                for (i = 0; i < BTA_AG_NUM_IDX; i++) {
                    if (port_handle == p_scb->serv_handle[i])
                        found_handle = TRUE;
                }
            }

            if (!found_handle) {
                APPL_TRACE_ERROR ("bta_ag_mgmt_cback: PORT_SUCCESS, ignoring handle = %d", port_handle);
                return;
            }
            event = BTA_AG_RFC_OPEN_EVT;
        } else if (port_handle == p_scb->conn_handle) {

            event = BTA_AG_RFC_CLOSE_EVT;
        } else {
            event = BTA_AG_RFC_SRV_CLOSE_EVT;
        }

        if ((p_buf = (tBTA_AG_RFC *) osi_malloc(sizeof(tBTA_AG_RFC))) != ((void*)0)) {
            p_buf->hdr.event = event;
            p_buf->hdr.layer_specific = handle;
            p_buf->port_handle = port_handle;
            bta_sys_sendmsg(p_buf);
        }
    }
}
