#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ctl_named_node_t ;
struct TYPE_2__ {size_t narenas; } ;

/* Variables and functions */
 int /*<<< orphan*/  ctl_mtx ; 
 TYPE_1__ ctl_stats ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * super_arena_i_node ; 

__attribute__((used)) static const ctl_named_node_t *
FUNC2(const size_t *mib, size_t miblen, size_t i)
{
	const ctl_named_node_t * ret;

	FUNC0(&ctl_mtx);
	if (i > ctl_stats.narenas) {
		ret = NULL;
		goto label_return;
	}

	ret = super_arena_i_node;
label_return:
	FUNC1(&ctl_mtx);
	return (ret);
}