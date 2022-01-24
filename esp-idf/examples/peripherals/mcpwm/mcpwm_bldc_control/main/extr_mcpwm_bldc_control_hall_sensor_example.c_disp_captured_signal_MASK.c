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
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ sel_cap_signal; int capture_signal; } ;
typedef  TYPE_1__ capture ;
typedef  int /*<<< orphan*/  CAP_SIG_NUM ;

/* Variables and functions */
 scalar_t__ MCPWM_SELECT_CAP0 ; 
 scalar_t__ MCPWM_SELECT_CAP1 ; 
 scalar_t__ MCPWM_SELECT_CAP2 ; 
 int /*<<< orphan*/  cap_queue ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *arg)
{
    uint32_t *current_cap_value = (uint32_t *)FUNC0(sizeof(CAP_SIG_NUM));
    uint32_t *previous_cap_value = (uint32_t *)FUNC0(sizeof(CAP_SIG_NUM));
    capture evt;
    while (1) {
        FUNC2(cap_queue, &evt, portMAX_DELAY);
        if (evt.sel_cap_signal == MCPWM_SELECT_CAP0) {
            current_cap_value[0] = evt.capture_signal - previous_cap_value[0];
            previous_cap_value[0] = evt.capture_signal;
            current_cap_value[0] = (current_cap_value[0] / 10000) * (10000000000 / FUNC1());
            //printf("CAP0 : %d us\n", current_cap_value[0]);
        }
        if (evt.sel_cap_signal == MCPWM_SELECT_CAP1) {
            current_cap_value[1] = evt.capture_signal - previous_cap_value[1];
            previous_cap_value[1] = evt.capture_signal;
            current_cap_value[1] = (current_cap_value[1] / 10000) * (10000000000 / FUNC1());
            //printf("CAP1 : %d us\n", current_cap_value[1]);
        }
        if (evt.sel_cap_signal == MCPWM_SELECT_CAP2) {
            current_cap_value[2] = evt.capture_signal -  previous_cap_value[2];
            previous_cap_value[2] = evt.capture_signal;
            current_cap_value[2] = (current_cap_value[2] / 10000) * (10000000000 / FUNC1());
            //printf("CAP2 : %d us\n", current_cap_value[2]);
        }
    }
}