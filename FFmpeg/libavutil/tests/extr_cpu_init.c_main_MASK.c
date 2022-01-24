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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  thread_main ; 

int FUNC4(void)
{
    int cpu_flags1;
    int cpu_flags2;
    int ret;
    pthread_t thread1;
    pthread_t thread2;

    if ((ret = FUNC1(&thread1, NULL, thread_main, &cpu_flags1))) {
        FUNC0(stderr, "pthread_create failed: %s.\n", FUNC3(ret));
        return 1;
    }
    if ((ret = FUNC1(&thread2, NULL, thread_main, &cpu_flags2))) {
        FUNC0(stderr, "pthread_create failed: %s.\n", FUNC3(ret));
        return 1;
    }
    FUNC2(thread1, NULL);
    FUNC2(thread2, NULL);

    if (cpu_flags1 < 0)
        return 2;
    if (cpu_flags2 < 0)
        return 2;
    if (cpu_flags1 != cpu_flags2)
        return 3;

    return 0;
}