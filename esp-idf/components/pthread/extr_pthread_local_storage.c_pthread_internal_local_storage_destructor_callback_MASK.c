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
 int /*<<< orphan*/  PTHREAD_TLS_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
    void *tls = FUNC1(NULL, PTHREAD_TLS_INDEX);
    if (tls != NULL) {
        FUNC0(PTHREAD_TLS_INDEX, tls);
        /* remove the thread-local-storage pointer to avoid the idle task cleanup
           calling it again...
        */
#if defined(CONFIG_FREERTOS_ENABLE_STATIC_TASK_CLEAN_UP)
        vTaskSetThreadLocalStoragePointer(NULL, PTHREAD_TLS_INDEX, NULL);
#else
        FUNC3(NULL,
                                                        PTHREAD_TLS_INDEX,
                                                        NULL,
                                                        NULL);
#endif
    }
}