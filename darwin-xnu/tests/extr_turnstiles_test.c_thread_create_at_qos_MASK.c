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
typedef  scalar_t__ qos_class_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PRIO_DARWIN_ROLE ; 
 int /*<<< orphan*/  PRIO_DARWIN_ROLE_UI_FOCAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(qos_class_t qos, void * (*function)(void *), int type)
{
	qos_class_t qos_thread;
	pthread_t thread;
        pthread_attr_t attr;
	int ret;

	ret = FUNC6(PRIO_DARWIN_ROLE, 0, PRIO_DARWIN_ROLE_UI_FOCAL);
	if (ret != 0) {
		FUNC1("set priority failed\n");
	}

        FUNC2(&attr);
        FUNC3(&attr, qos, 0);
        FUNC4(&thread, &attr, function, (void *)type);

	FUNC1("pthread created\n");
	FUNC5(thread, &qos_thread, NULL);
        FUNC0(qos_thread, (qos_class_t)qos, NULL);
}