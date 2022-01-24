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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ USHORT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 size_t MB_SERIAL_BUF_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ bRxStateEnabled ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ucBuffer ; 
 int /*<<< orphan*/  ucUartNumber ; 
 size_t uiRxBufferPos ; 

__attribute__((used)) static void FUNC5(size_t xEventSize)
{
    USHORT usLength;

    if (bRxStateEnabled) {
        if (xEventSize > 0) {
            xEventSize = (xEventSize > MB_SERIAL_BUF_SIZE) ?  MB_SERIAL_BUF_SIZE : xEventSize;
            uiRxBufferPos = ((uiRxBufferPos + xEventSize) >= MB_SERIAL_BUF_SIZE) ? 0 : uiRxBufferPos;
            // Get received packet into Rx buffer
            usLength = FUNC4(ucUartNumber, &ucBuffer[uiRxBufferPos], xEventSize, portMAX_DELAY);
            for(USHORT usCnt = 0; usCnt < usLength; usCnt++ ) {
                // Call the Modbus stack callback function and let it fill the buffers.
                ( void )FUNC1(); // calls callback xMBRTUReceiveFSM() to execute MB state machine
            }
            // The buffer is transferred into Modbus stack and is not needed here any more
            FUNC3(ucUartNumber);
            // Send event EV_FRAME_RECEIVED to allow stack process packet
#ifndef MB_TIMER_PORT_ENABLED
            // Let the stack know that T3.5 time is expired and data is received
            (void)FUNC2(); // calls callback xMBRTUTimerT35Expired();
#endif
            FUNC0(TAG, "Receive: %d(bytes in buffer)\n", (uint32_t)usLength);
        }
    }
}