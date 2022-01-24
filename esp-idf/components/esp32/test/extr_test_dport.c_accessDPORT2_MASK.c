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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ESP_INTR_FLAG_IRAM ; 
 int ESP_INTR_FLAG_LEVEL5 ; 
 int /*<<< orphan*/  ETS_INTERNAL_TIMER2_INTR_SOURCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int dport_test_result ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int exit_flag ; 
 int /*<<< orphan*/  inth ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    dport_test_result = true;

    FUNC1(FUNC4(ETS_INTERNAL_TIMER2_INTR_SOURCE, ESP_INTR_FLAG_LEVEL5 | ESP_INTR_FLAG_IRAM, NULL, NULL, &inth));

    while (exit_flag == false) {
        FUNC3(2, FUNC2() + 21);
        for (int i = 0; i < 200; ++i) {
            if (FUNC0(DPORT_DATE_REG) != FUNC0(DPORT_DATE_REG)) {
                dport_test_result = false;
                break;
            }
        }
    }
    FUNC5(inth);
    FUNC6("accessDPORT2 finish\n");

    FUNC8(*sema);
    FUNC7(NULL);
}