#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
struct timespec {int member_0; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_7__ {int /*<<< orphan*/  n_flag; int /*<<< orphan*/  n_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NBUSY ; 
 int /*<<< orphan*/  NBUSYWANT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ PZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,char*,struct timespec*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(nfsnode_t np, thread_t thd)
{
	struct timespec ts = { 2, 0 };
	int error;

	if ((error = FUNC4(np)))
		return (error);
	while (FUNC0(np->n_flag, NBUSY)) {
		FUNC2(np->n_flag, NBUSYWANT);
		FUNC3(np, &np->n_lock, PZERO-1, "nfsbusywant", &ts);
		if ((error = FUNC6(FUNC1(np), NULL, thd, 0)))
			break;
	}
	if (!error)
		FUNC2(np->n_flag, NBUSY);
	FUNC5(np);
	return (error);
}