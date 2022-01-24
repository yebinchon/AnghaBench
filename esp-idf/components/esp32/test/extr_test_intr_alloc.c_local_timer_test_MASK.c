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
typedef  int /*<<< orphan*/  intr_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_INTR_FLAG_INTRDISABLED ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  ETS_INTERNAL_TIMER1_INTR_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int int_timer_ctr ; 
 int /*<<< orphan*/  int_timer_handler ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

void FUNC10(void)
{
    intr_handle_t ih;
    esp_err_t r;
    r=FUNC1(ETS_INTERNAL_TIMER1_INTR_SOURCE, 0, int_timer_handler, NULL, &ih);
    FUNC0(r==ESP_OK);
    FUNC6("Int timer 1 intno %d\n", FUNC5(ih));
    FUNC9(1, FUNC8()+8000000);
    int_timer_ctr=0;
    FUNC7(1000 / portTICK_PERIOD_MS);
    FUNC6("Timer val after 1 sec: %d\n", int_timer_ctr);
    FUNC0(int_timer_ctr!=0);
    FUNC6("Disabling int\n");
    FUNC2(ih);
    int_timer_ctr=0;
    FUNC7(1000 / portTICK_PERIOD_MS);
    FUNC6("Timer val after 1 sec: %d\n", int_timer_ctr);
    FUNC0(int_timer_ctr==0);
    FUNC6("Re-enabling\n");
    FUNC3(ih);
    FUNC7(1000 / portTICK_PERIOD_MS);
    FUNC6("Timer val after 1 sec: %d\n", int_timer_ctr);
    FUNC0(int_timer_ctr!=0);

    FUNC6("Free int, re-alloc disabled\n");
    r=FUNC4(ih);
    FUNC0(r==ESP_OK);
    r=FUNC1(ETS_INTERNAL_TIMER1_INTR_SOURCE, ESP_INTR_FLAG_INTRDISABLED, int_timer_handler, NULL, &ih);
    FUNC0(r==ESP_OK);
    int_timer_ctr=0;
    FUNC7(1000 / portTICK_PERIOD_MS);
    FUNC6("Timer val after 1 sec: %d\n", int_timer_ctr);
    FUNC0(int_timer_ctr==0);
    FUNC6("Re-enabling\n");
    FUNC3(ih);
    FUNC7(1000 / portTICK_PERIOD_MS);
    FUNC6("Timer val after 1 sec: %d\n", int_timer_ctr);
    FUNC0(int_timer_ctr!=0);
    r=FUNC4(ih);
    FUNC0(r==ESP_OK);
    FUNC6("Done.\n");
}