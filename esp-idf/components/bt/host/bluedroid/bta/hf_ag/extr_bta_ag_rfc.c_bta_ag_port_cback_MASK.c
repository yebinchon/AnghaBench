#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ conn_handle; } ;
typedef  TYPE_1__ tBTA_AG_SCB ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_6__ {scalar_t__ layer_specific; int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  BTA_AG_RFC_DATA_EVT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(UINT32 code, UINT16 port_handle, UINT16 handle)
{
    BT_HDR      *p_buf;
    tBTA_AG_SCB *p_scb;
    FUNC1(code);

    if ((p_scb = FUNC2(handle)) != NULL) {
        /* ignore port events for port handles other than connected handle */
        if (port_handle != p_scb->conn_handle) {
            FUNC0("ag_port_cback ignoring handle:%d conn_handle = %d other handle = %d",
                              port_handle, p_scb->conn_handle, handle);
            return;
        }

        if ((p_buf = (BT_HDR *) FUNC4(sizeof(BT_HDR))) != NULL) {
            p_buf->event = BTA_AG_RFC_DATA_EVT;
            p_buf->layer_specific = handle;
            FUNC3(p_buf);
        }
    }
}