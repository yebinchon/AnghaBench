#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ U32 ;
struct TYPE_2__ {scalar_t__ xHandle; char const* pcTaskName; unsigned int uxCurrentPriority; unsigned int uStackHighWaterMark; scalar_t__ pxStack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*,unsigned int,scalar_t__,unsigned int) ; 
 unsigned int SYSVIEW_FREERTOS_MAX_NOF_TASKS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,unsigned int,scalar_t__,unsigned int) ; 
 TYPE_1__* _aTasks ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

void FUNC3(U32 xHandle, const char* pcTaskName, unsigned uxCurrentPriority, U32 pxStack, unsigned uStackHighWaterMark) {
  unsigned n;
  
  if (FUNC2(pcTaskName, "IDLE", 5) == 0) {
    return;
  }

  for (n = 0; n < SYSVIEW_FREERTOS_MAX_NOF_TASKS; n++) {
    if (_aTasks[n].xHandle == xHandle) {
      break;
    }
  }
  if (n < SYSVIEW_FREERTOS_MAX_NOF_TASKS) {
    _aTasks[n].pcTaskName = pcTaskName;
    _aTasks[n].uxCurrentPriority = uxCurrentPriority;
    _aTasks[n].pxStack = pxStack;
    _aTasks[n].uStackHighWaterMark = uStackHighWaterMark;

    FUNC1(xHandle, pcTaskName, uxCurrentPriority, pxStack, uStackHighWaterMark);
  } else {
    FUNC0(xHandle, pcTaskName, uxCurrentPriority, pxStack, uStackHighWaterMark);
  }
}