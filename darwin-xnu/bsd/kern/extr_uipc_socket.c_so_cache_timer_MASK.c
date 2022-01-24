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
struct socket {scalar_t__ cache_timestamp; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SO_CACHE_MAX_FREE_BATCH ; 
 scalar_t__ SO_CACHE_TIME_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct socket* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ cached_sock_count ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  so_cache_ent ; 
 int /*<<< orphan*/  so_cache_head ; 
 int /*<<< orphan*/  so_cache_max_freed ; 
 int /*<<< orphan*/  so_cache_mtx ; 
 scalar_t__ so_cache_time ; 
 int /*<<< orphan*/  so_cache_timeouts ; 
 int /*<<< orphan*/  so_cache_zone ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct socket*) ; 

boolean_t
FUNC8(void)
{
	struct socket	*p;
	int		n_freed = 0;
	boolean_t rc = FALSE;

	FUNC4(so_cache_mtx);
	so_cache_timeouts++;
	so_cache_time = FUNC6();

	while (!FUNC0(&so_cache_head)) {
		FUNC3(cached_sock_count > 0);
		p = FUNC1(&so_cache_head);
		if ((so_cache_time - p->cache_timestamp) <
			SO_CACHE_TIME_LIMIT)
			break;

		FUNC2(&so_cache_head, so_cache_ent);
		--cached_sock_count;

		FUNC7(so_cache_zone, p);

		if (++n_freed >= SO_CACHE_MAX_FREE_BATCH) {
			so_cache_max_freed++;
			break;
		}
	}

	/* Schedule again if there is more to cleanup */
	if (!FUNC0(&so_cache_head))
		rc = TRUE;

	FUNC5(so_cache_mtx);
	return (rc);
}