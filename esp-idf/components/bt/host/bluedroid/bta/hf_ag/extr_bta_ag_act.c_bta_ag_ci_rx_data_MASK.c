#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  app_id; int /*<<< orphan*/  conn_handle; } ;
typedef  TYPE_1__ tBTA_AG_SCB ;
typedef  int /*<<< orphan*/  tBTA_AG_DATA ;
typedef  int /*<<< orphan*/  tBTA_AG_CI_RX_WRITE ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_ID_AG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UINT16 len;
    tBTA_AG_CI_RX_WRITE *p_rx_write_msg = (tBTA_AG_CI_RX_WRITE *)p_data;
    char *p_data_area = (char *)(p_rx_write_msg+1);     /* Point to data area after header */

    FUNC0("bta_ag_ci_rx_data:");
    /* send to RFCOMM */
    FUNC2(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);
    FUNC1(p_scb->conn_handle, p_data_area, FUNC4(p_data_area), &len);
    FUNC3(BTA_ID_AG, p_scb->app_id, p_scb->peer_addr);
}