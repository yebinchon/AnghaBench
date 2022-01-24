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
typedef  int /*<<< orphan*/ * pthread_functions_t ;
typedef  int /*<<< orphan*/ * pthread_callbacks_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  pthread_callbacks ; 
 int /*<<< orphan*/ * pthread_functions ; 

void
FUNC1(pthread_functions_t fns, pthread_callbacks_t *callbacks)
{
	if (pthread_functions != NULL) {
		FUNC0("Re-initialisation of pthread kext callbacks.");
	}

	if (callbacks != NULL) {
		*callbacks = &pthread_callbacks;
	} else {
		FUNC0("pthread_kext_register called without callbacks pointer.");
	}

	if (fns) {
		pthread_functions = fns;
	}
}