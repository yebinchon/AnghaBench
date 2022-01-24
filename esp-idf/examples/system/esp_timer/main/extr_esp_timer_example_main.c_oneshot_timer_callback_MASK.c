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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  esp_timer_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void* arg)
{
    int64_t time_since_boot = FUNC2();
    FUNC1(TAG, "One-shot timer called, time since boot: %lld us", time_since_boot);
    esp_timer_handle_t periodic_timer_handle = (esp_timer_handle_t) arg;
    /* To start the timer which is running, need to stop it first */
    FUNC0(FUNC4(periodic_timer_handle));
    FUNC0(FUNC3(periodic_timer_handle, 1000000));
    time_since_boot = FUNC2();
    FUNC1(TAG, "Restarted periodic timer with 1s period, time since boot: %lld us",
            time_since_boot);
}