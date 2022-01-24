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
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ can_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXAMPLE_TAG ; 
 int NO_OF_ITERS ; 
 int NO_OF_MSGS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctrl_sem ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  rx_sem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *arg)
{
    can_message_t rx_message;
    for (int iter = 0; iter < NO_OF_ITERS; iter++) {
        FUNC5(rx_sem, portMAX_DELAY);
        for (int i = 0; i < NO_OF_MSGS; i++) {
            //Receive message and print message data
            FUNC0(FUNC2(&rx_message, portMAX_DELAY));
            FUNC1(EXAMPLE_TAG, "Msg received - Data = %d", rx_message.data[0]);
        }
        //Indicate to control task all messages received for this iteration
        FUNC4(ctrl_sem);
    }
    FUNC3(NULL);
}