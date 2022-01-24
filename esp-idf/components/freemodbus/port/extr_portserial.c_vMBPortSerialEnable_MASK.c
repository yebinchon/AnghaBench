#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 void* FALSE ; 
 void* TRUE ; 
 void* bRxStateEnabled ; 
 void* bTxStateEnabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xMbTaskHandle ; 

void FUNC2(BOOL bRxEnable, BOOL bTxEnable)
{
    // This function can be called from xMBRTUTransmitFSM() of different task
    if (bRxEnable) {
        //uart_enable_rx_intr(ucUartNumber);
        bRxStateEnabled = TRUE;
        FUNC0(xMbTaskHandle); // Resume receiver task
    } else {
        FUNC1(xMbTaskHandle); // Block receiver task
        bRxStateEnabled = FALSE;
    }
    if (bTxEnable) {
        bTxStateEnabled = TRUE;
    } else {
        bTxStateEnabled = FALSE;
    }
}