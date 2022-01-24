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
typedef  int /*<<< orphan*/  tmr_obj_t ;
typedef  int /*<<< orphan*/ * tmr_h ;
struct TYPE_3__ {scalar_t__* label; } ;
typedef  TYPE_1__ tmr_ctrl_t ;
typedef  int /*<<< orphan*/  TAOS_TMR_CALLBACK ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*) ; 

tmr_h FUNC3(TAOS_TMR_CALLBACK fp, int mseconds, void* param, void* handle) {
  tmr_ctrl_t* ctrl = (tmr_ctrl_t*)handle;
  if (ctrl == NULL || ctrl->label[0] == 0) {
    return NULL;
  }

  tmr_obj_t* timer = (tmr_obj_t*)FUNC0(1, sizeof(tmr_obj_t));
  if (timer == NULL) {
    FUNC2("%s failed to allocated memory for new timer object.", ctrl->label);
    return NULL;
  }

  return (tmr_h)FUNC1(timer, fp, mseconds, param, ctrl);
}