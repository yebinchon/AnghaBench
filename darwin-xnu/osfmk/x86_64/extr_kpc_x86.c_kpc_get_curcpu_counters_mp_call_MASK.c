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
struct kpc_get_counters_remote {int buf_stride; int /*<<< orphan*/  nb_counters; struct kpc_get_counters_remote* buf; int /*<<< orphan*/  classes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kpc_get_counters_remote*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct kpc_get_counters_remote*) ; 

__attribute__((used)) static void
FUNC4(void *args)
{
	struct kpc_get_counters_remote *handler = args;
	int offset=0, r=0;

	FUNC0(handler);
	FUNC0(handler->buf);

	offset = FUNC1() * handler->buf_stride;
	r = FUNC3(handler->classes, NULL, &handler->buf[offset]);

	/* number of counters added by this CPU, needs to be atomic  */
	FUNC2(&(handler->nb_counters), r);
}