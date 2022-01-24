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
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  IP_ADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  test_accept ; 
 int /*<<< orphan*/ * test_pcb ; 

void FUNC6(void)
{
    test_pcb = FUNC5();
    if (test_pcb != NULL) {
        err_t err;
        /* Binding this test_pcb to 4242 to accept connections on this port
         * - this has to be configured as DUT endpoint
         * - all network traffic from and to network stack is tracked in nettestif
         */
        err = FUNC3(test_pcb, IP_ADDR_ANY, 4242);
        if (err == ERR_OK) {
            test_pcb = FUNC4(test_pcb);
            FUNC2(test_pcb, test_accept);
        } else  {
            FUNC1("cannot bind test_pcb\n");
            FUNC0();
        }
    } else  {
        FUNC1("cannot create test_pcb\n");
        FUNC0();
    }
}