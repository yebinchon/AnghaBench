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

/* Variables and functions */
 int ESP_INTR_FLAG_IRAM ; 
 int ESP_INTR_FLAG_LEVEL5 ; 
 int /*<<< orphan*/  ETS_INTERNAL_TIMER2_INTR_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int exit_flag ; 
 int /*<<< orphan*/  inth ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *arg)
{
    FUNC3("init hi_interrupt on CPU%d \n", FUNC5());
    FUNC0(FUNC1(ETS_INTERNAL_TIMER2_INTR_SOURCE, ESP_INTR_FLAG_LEVEL5 | ESP_INTR_FLAG_IRAM, NULL, NULL, &inth));
    while (exit_flag == false);
    FUNC2(inth);
    FUNC3("disable hi_interrupt on CPU%d \n", FUNC5());
    FUNC4(NULL);
}