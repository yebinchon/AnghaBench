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
typedef  int /*<<< orphan*/  qos_class_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PRIO_DARWIN_ROLE ; 
 int /*<<< orphan*/  PRIO_DARWIN_ROLE_UI_FOCAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(qos_class_t qos, void * (*function)(void *))
{
	qos_class_t qos_thread;
	pthread_t thread;
        pthread_attr_t attr;
	int ret;

	ret = FUNC5(PRIO_DARWIN_ROLE, 0, PRIO_DARWIN_ROLE_UI_FOCAL);
	if (ret != 0) {
		FUNC0("set priority failed\n");
	}

        FUNC1(&attr);
        FUNC2(&attr, qos, 0);
        FUNC3(&thread, &attr, function, NULL);

	FUNC0("pthread created\n");
	FUNC4(thread, &qos_thread, NULL);
}