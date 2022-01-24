#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct socket {int so_flags; TYPE_1__* so_cfil; } ;
typedef  scalar_t__ errno_t ;
struct TYPE_6__ {int /*<<< orphan*/  cfi_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFIF_SOCK_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int MAX_CONTENT_FILTER ; 
 int SOF_CONTENT_FILTER ; 
 scalar_t__ FUNC3 (struct socket*) ; 
 scalar_t__ FUNC4 (struct socket*,TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (struct socket*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*) ; 

void
FUNC11(struct socket *so)
{
	errno_t error = 0;
	int kcunit;

	if (FUNC2(so)) {
		FUNC9(so);
		return;
	}

	if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == NULL)
		return;

	FUNC1(LOG_INFO, "so %llx", (uint64_t)FUNC3(so));

	FUNC10(so);

	for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {
		/* Let the filters know of the closing */
		error = FUNC5(so, so->so_cfil, kcunit);
	}

	/* Last chance to push passed data out */
	error = FUNC4(so, so->so_cfil, 1);
	if (error == 0)
		FUNC8(so, so->so_cfil, 1);
	FUNC7(so, 1);

	so->so_cfil->cfi_flags |= CFIF_SOCK_CLOSED;

	/* Pending data needs to go */
	FUNC6(so, so->so_cfil);

	FUNC0(so->so_cfil);
}