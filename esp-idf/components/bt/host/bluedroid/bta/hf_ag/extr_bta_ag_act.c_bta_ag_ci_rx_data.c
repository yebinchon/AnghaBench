
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int peer_addr; int app_id; int conn_handle; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
typedef int tBTA_AG_CI_RX_WRITE ;
typedef int UINT16 ;


 int APPL_TRACE_DEBUG (char*) ;
 int BTA_ID_AG ;
 int PORT_WriteData (int ,char*,int ,int *) ;
 int bta_sys_busy (int ,int ,int ) ;
 int bta_sys_idle (int ,int ,int ) ;
 int strlen (char*) ;

void bta_ag_ci_rx_data(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UINT16 len;
    tBTA_AG_CI_RX_WRITE *p_rx_write_msg = (tBTA_AG_CI_RX_WRITE *)p_data;
    char *p_data_area = (char *)(p_rx_write_msg+1);

    APPL_TRACE_DEBUG("bta_ag_ci_rx_data:");

    bta_sys_busy(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);
    PORT_WriteData(p_scb->conn_handle, p_data_area, strlen(p_data_area), &len);
    bta_sys_idle(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);
}
