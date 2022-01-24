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
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 char** newargv ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  work ; 

int FUNC6(int argc, char *argv[]) {

    int i, count, threadcount;
    int ret;
    pthread_t *threads;

    if (argc < 4) {
        FUNC5();
    }

    threadcount = FUNC0(argv[1]);
    count = FUNC0(argv[2]);
    
    newargv = &argv[3];

    threads = (pthread_t *)FUNC1(threadcount, sizeof(pthread_t));
    for (i=0; i < threadcount; i++) {
        ret = FUNC3(&threads[i], NULL, work, (void *)(intptr_t)count);
        if (ret) {
            FUNC2(1, "pthread_create");
        }
    }
    
    for (i=0; i < threadcount; i++) {
        ret = FUNC4(threads[i], NULL);
        if (ret) {
            FUNC2(1, "pthread_join");
        }
    }
    
    return 0;
}