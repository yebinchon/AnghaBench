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
typedef  int /*<<< orphan*/  U8 ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEGGER_SYSVIEW_INFO_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int SEGGER_SYSVIEW_QUANTA_U32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

void FUNC3(unsigned Id, U32 Para0, U32 Para1, U32 Para2, U32 Para3) {
      U8  aPacket[SEGGER_SYSVIEW_INFO_SIZE + 4 * SEGGER_SYSVIEW_QUANTA_U32];
      U8* pPayload;
      //
      pPayload = FUNC1(aPacket);                // Prepare the packet for SystemView
      pPayload = FUNC0(pPayload, Para0);             // Add the first parameter to the packet
      pPayload = FUNC0(pPayload, Para1);             // Add the second parameter to the packet
      pPayload = FUNC0(pPayload, Para2);             // Add the third parameter to the packet
      pPayload = FUNC0(pPayload, Para3);             // Add the fourth parameter to the packet
      //
      FUNC2(&aPacket[0], pPayload, Id);             // Send the packet
}