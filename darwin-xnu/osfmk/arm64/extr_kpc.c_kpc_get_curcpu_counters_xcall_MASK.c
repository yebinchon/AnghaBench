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
struct kpc_get_counters_remote {int buf_stride; int /*<<< orphan*/  nb_counters; int /*<<< orphan*/ * buf; int /*<<< orphan*/  classes; } ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kpc_xread_sync ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *args)
{
	struct kpc_get_counters_remote *handler = args;

	FUNC0(handler != NULL);
	FUNC0(handler->buf != NULL);

	int offset = FUNC1() * handler->buf_stride;
	int r = FUNC4(handler->classes, NULL, &handler->buf[offset]);

	/* number of counters added by this CPU, needs to be atomic  */
	FUNC2(&(handler->nb_counters), r);

	if (FUNC3(&kpc_xread_sync, 1) == 0) {
		FUNC5((event_t) &kpc_xread_sync);
	}
}