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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct waitq_link {TYPE_1__ wql_setid; } ;
struct waitq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LT_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct waitq_link* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

uint64_t FUNC6(struct waitq *waitq)
{
	struct waitq_link *link;
	uint64_t reserved_id = 0;

	FUNC0(FUNC2() == 0 && FUNC3(FUNC1()));

	/*
	 * We've asserted that the caller can block, so we enforce a
	 * minimum-free table element policy here.
	 */
	FUNC5();

	(void)waitq;
	link = FUNC4(LT_RESERVED);
	if (!link)
		return 0;

	reserved_id = link->wql_setid.id;

	return reserved_id;
}