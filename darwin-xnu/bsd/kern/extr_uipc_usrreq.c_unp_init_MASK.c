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
struct unpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MCLBYTES ; 
 int UIPC_MAX_CMSG_FD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int nmbclusters ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * unp_connect_lock ; 
 int /*<<< orphan*/  unp_dhead ; 
 int /*<<< orphan*/ * unp_disconnect_lock ; 
 int /*<<< orphan*/ * unp_list_mtx ; 
 int /*<<< orphan*/  unp_mtx_attr ; 
 int /*<<< orphan*/  unp_mtx_grp ; 
 int /*<<< orphan*/  unp_mtx_grp_attr ; 
 int /*<<< orphan*/  unp_shead ; 
 scalar_t__ unp_zone ; 
 scalar_t__ FUNC8 (int,int,int,char*) ; 

void
FUNC9(void)
{
	FUNC1(UIPC_MAX_CMSG_FD >= (MCLBYTES / sizeof(int)));
	unp_zone = FUNC8(sizeof (struct unpcb),
	    (nmbclusters * sizeof (struct unpcb)), 4096, "unpzone");

	if (unp_zone == 0)
		FUNC7("unp_init");
	FUNC0(&unp_dhead);
	FUNC0(&unp_shead);

	/*
	 * allocate lock group attribute and group for udp pcb mutexes
	 */
	unp_mtx_grp_attr = FUNC4();

	unp_mtx_grp = FUNC3("unp_list", unp_mtx_grp_attr);

	unp_mtx_attr = FUNC2();

	if ((unp_list_mtx = FUNC6(unp_mtx_grp,
	    unp_mtx_attr)) == NULL)
		return;	/* pretty much dead if this fails... */

	if ((unp_disconnect_lock = FUNC5(unp_mtx_grp,
		unp_mtx_attr)) == NULL)
		return;

	if ((unp_connect_lock = FUNC5(unp_mtx_grp,
		unp_mtx_attr)) == NULL)
		return;
}