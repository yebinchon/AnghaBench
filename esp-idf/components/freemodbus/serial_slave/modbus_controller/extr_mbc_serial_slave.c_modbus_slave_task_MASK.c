#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mbs_event_group; } ;
typedef  TYPE_1__ mb_slave_options_t ;
struct TYPE_4__ {TYPE_1__ opts; } ;
typedef  int BaseType_t ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EV_FRAME_SENT ; 
 int MB_EVENT_STACK_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* mbs_interface_ptr ; 
 int /*<<< orphan*/  pdFALSE ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *pvParameters)
{
    // Modbus interface must be initialized before start 
    FUNC0(mbs_interface_ptr != NULL);
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    
    FUNC0(mbs_opts != NULL);
    // Main Modbus stack processing cycle
    for (;;) {
        BaseType_t status = FUNC2(mbs_opts->mbs_event_group,
                                                (BaseType_t)(MB_EVENT_STACK_STARTED),
                                                pdFALSE, // do not clear bits
                                                pdFALSE,
                                                portMAX_DELAY);
        // Check if stack started then poll for data
        if (status & MB_EVENT_STACK_STARTED) {
            (void)FUNC1(); // allow stack to process data
            // Send response buffer
            BOOL xSentState = FUNC4(); 
            if (xSentState) {
                (void)FUNC3( EV_FRAME_SENT );
            }
        }
    }
}