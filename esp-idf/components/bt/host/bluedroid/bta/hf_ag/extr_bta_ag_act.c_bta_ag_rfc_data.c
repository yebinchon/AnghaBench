
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int peer_addr; int app_id; int at_cb; int conn_handle; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
typedef scalar_t__ UINT16 ;


 int APPL_TRACE_DEBUG (char*) ;
 int BTA_AG_RFC_READ_MAX ;
 int BTA_ID_AG ;
 scalar_t__ PORT_ReadData (int ,char*,int,scalar_t__*) ;
 scalar_t__ PORT_SUCCESS ;
 int UNUSED (int *) ;
 int bta_ag_at_parse (int *,char*,scalar_t__) ;
 int bta_sys_busy (int ,int ,int ) ;
 int bta_sys_idle (int ,int ,int ) ;
 int memset (char*,int ,int) ;

void bta_ag_rfc_data(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UINT16 len;
    char buf[BTA_AG_RFC_READ_MAX];
    UNUSED(p_data);
    memset(buf, 0, BTA_AG_RFC_READ_MAX);

    APPL_TRACE_DEBUG("bta_ag_rfc_data");

    for (;;) {

        if (PORT_ReadData(p_scb->conn_handle, buf, BTA_AG_RFC_READ_MAX, &len) != PORT_SUCCESS) {
            break;
        }

        if (len == 0) {
            break;
        }

        bta_sys_busy(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);
        bta_ag_at_parse(&p_scb->at_cb, buf, len);
        bta_sys_idle(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);

        if (len < BTA_AG_RFC_READ_MAX) {
            break;
        }
    }
}
