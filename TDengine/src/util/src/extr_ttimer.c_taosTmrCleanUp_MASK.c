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
struct TYPE_3__ {scalar_t__* label; struct TYPE_3__* next; } ;
typedef  TYPE_1__ tmr_ctrl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  numOfTmrCtrl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmrCtrlMutex ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__*) ; 
 TYPE_1__* unusedTmrCtrl ; 

void FUNC4(void* handle) {
  tmr_ctrl_t* ctrl = (tmr_ctrl_t*)handle;
  FUNC0(ctrl != NULL && ctrl->label[0] != 0);

  FUNC3("%s timer controller is cleaned up.", ctrl->label);
  ctrl->label[0] = 0;

  FUNC1(&tmrCtrlMutex);
  ctrl->next = unusedTmrCtrl;
  numOfTmrCtrl--;
  unusedTmrCtrl = ctrl;
  FUNC2(&tmrCtrlMutex);
}