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
 int /*<<< orphan*/  ESP_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void *arg)
{
    static const char *TX_TASK_TAG = "TX_TASK";
    FUNC0(TX_TASK_TAG, ESP_LOG_INFO);
    while (1) {
        FUNC1(TX_TASK_TAG, "Hello world");
        FUNC2(2000 / portTICK_PERIOD_MS);
    }
}