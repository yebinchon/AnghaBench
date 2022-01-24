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
typedef  int /*<<< orphan*/  xTaskHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENSSL_EXAMPLE_TASK_NAME ; 
 int /*<<< orphan*/  OPENSSL_EXAMPLE_TASK_PRIORITY ; 
 int /*<<< orphan*/  OPENSSL_EXAMPLE_TASK_STACK_WORDS ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  openssl_example_task ; 
 int pdPASS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
    int ret;
    xTaskHandle openssl_handle;

    ret = FUNC1(openssl_example_task,
                      OPENSSL_EXAMPLE_TASK_NAME,
                      OPENSSL_EXAMPLE_TASK_STACK_WORDS,
                      NULL,
                      OPENSSL_EXAMPLE_TASK_PRIORITY,
                      &openssl_handle);

    if (ret != pdPASS)  {
        FUNC0(TAG, "create thread %s failed", OPENSSL_EXAMPLE_TASK_NAME);
    }
}