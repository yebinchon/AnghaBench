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
struct session {scalar_t__ s_count; int s_listflags; int /*<<< orphan*/  s_mlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct session*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SESSION ; 
 int S_LIST_DEAD ; 
 int S_LIST_TERM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  proc_lck_grp ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  proc_mlock_grp ; 
 int /*<<< orphan*/  s_hash ; 

void
FUNC6(struct session *sess)
{
	FUNC4();
	if (--sess->s_count == 0) {
		if ((sess->s_listflags & (S_LIST_TERM | S_LIST_DEAD)) != 0)
			FUNC3("session_rele: terminating already terminated session");
		sess->s_listflags |= S_LIST_TERM;
		FUNC1(sess, s_hash);
		sess->s_listflags |= S_LIST_DEAD;
		if (sess->s_count != 0)
			FUNC3("session_rele: freeing session in use");	
		FUNC5();
#if CONFIG_FINE_LOCK_GROUPS
		lck_mtx_destroy(&sess->s_mlock, proc_mlock_grp);
#else
		FUNC2(&sess->s_mlock, proc_lck_grp);
#endif
		FUNC0(sess, sizeof(struct session), M_SESSION);
	} else
		FUNC5();
}