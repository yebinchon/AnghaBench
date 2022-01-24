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
typedef  int /*<<< orphan*/  xSemaphoreHandle ;

/* Variables and functions */
 int /*<<< orphan*/  DPORT_DATE_REG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int apb_test_result ; 
 int dport_test_result ; 
 int exit_flag ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int xt_highint5_read_apb ; 

__attribute__((used)) static void FUNC8(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    dport_test_result = true;
    while (exit_flag == false) {
        FUNC1();
        FUNC3(2, FUNC2());
        xt_highint5_read_apb = 1;
        for (int i = 0; i < 200; ++i) {
            if (FUNC4(DPORT_DATE_REG) != FUNC4(DPORT_DATE_REG)) {
                apb_test_result = false;
                break;
            }
        }
        xt_highint5_read_apb = 0;
        FUNC0();
    }
    FUNC5("accessDPORT2_stall_other_cpu finish\n");

    FUNC7(*sema);
    FUNC6(NULL);
}