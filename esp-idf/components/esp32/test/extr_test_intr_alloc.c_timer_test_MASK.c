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
typedef  int /*<<< orphan*/  timer_isr_handle_t ;

/* Variables and functions */
 int ESP_INTR_FLAG_INTRDISABLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TIMER_0 ; 
 int /*<<< orphan*/  TIMER_1 ; 
 int /*<<< orphan*/  TIMER_GROUP_0 ; 
 int /*<<< orphan*/  TIMER_GROUP_1 ; 
 int* count ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  timer_isr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(int flags) {
    int x;
    timer_isr_handle_t inth[4];
    FUNC5(TIMER_GROUP_0, TIMER_0, 110000);
    FUNC5(TIMER_GROUP_0, TIMER_1, 120000);
    FUNC5(TIMER_GROUP_1, TIMER_0, 130000);
    FUNC5(TIMER_GROUP_1, TIMER_1, 140000);
    FUNC7(TIMER_GROUP_0, TIMER_0, timer_isr, (void*)0, flags|ESP_INTR_FLAG_INTRDISABLED, &inth[0]);
    FUNC7(TIMER_GROUP_0, TIMER_1, timer_isr, (void*)1, flags, &inth[1]);
    FUNC7(TIMER_GROUP_1, TIMER_0, timer_isr, (void*)2, flags, &inth[2]);
    FUNC7(TIMER_GROUP_1, TIMER_1, timer_isr, (void*)3, flags, &inth[3]);
    FUNC8(TIMER_GROUP_0, TIMER_0);
    FUNC8(TIMER_GROUP_0, TIMER_1);
    FUNC8(TIMER_GROUP_1, TIMER_0);
    FUNC8(TIMER_GROUP_1, TIMER_1);

    for (x=0; x<4; x++) count[x]=0;
    FUNC6("Interrupts allocated: %d (dis) %d %d %d\n",
            FUNC4(inth[0]), FUNC4(inth[1]),
            FUNC4(inth[2]), FUNC4(inth[3]));
    FUNC6("Timer values on start: %d %d %d %d\n", count[0], count[1], count[2], count[3]);
    FUNC9(1000 / portTICK_PERIOD_MS);
    FUNC6("Timer values after 1 sec: %d %d %d %d\n", count[0], count[1], count[2], count[3]);
    FUNC0(count[0]==0);
    FUNC0(count[1]!=0);
    FUNC0(count[2]!=0);
    FUNC0(count[3]!=0);

    FUNC6("Disabling timers 1 and 2...\n");
    FUNC2(inth[0]);
    FUNC1(inth[1]);
    FUNC1(inth[2]);
    for (x=0; x<4; x++) count[x]=0;
    FUNC9(1000 / portTICK_PERIOD_MS);
    FUNC6("Timer values after 1 sec: %d %d %d %d\n", count[0], count[1], count[2], count[3]);
    FUNC0(count[0]!=0);
    FUNC0(count[1]==0);
    FUNC0(count[2]==0);
    FUNC0(count[3]!=0);
    FUNC6("Disabling other half...\n");
    FUNC2(inth[1]);
    FUNC2(inth[2]);
    FUNC1(inth[0]);
    FUNC1(inth[3]);
    for (x=0; x<4; x++) count[x]=0;
    FUNC9(1000 / portTICK_PERIOD_MS);
    FUNC6("Timer values after 1 sec: %d %d %d %d\n", count[0], count[1], count[2], count[3]);
    FUNC0(count[0]==0);
    FUNC0(count[1]!=0);
    FUNC0(count[2]!=0);
    FUNC0(count[3]==0);
    FUNC6("Done.\n");
    FUNC3(inth[0]);
    FUNC3(inth[1]);
    FUNC3(inth[2]);
    FUNC3(inth[3]);
}