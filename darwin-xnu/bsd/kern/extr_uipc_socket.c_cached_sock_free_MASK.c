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
struct socket {int /*<<< orphan*/  cache_timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct socket*,int /*<<< orphan*/ ) ; 
 scalar_t__ cached_sock_count ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_cached_sock_count ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  so_cache_ent ; 
 int /*<<< orphan*/  so_cache_head ; 
 scalar_t__ so_cache_hw ; 
 int /*<<< orphan*/  so_cache_mtx ; 
 int /*<<< orphan*/  so_cache_time ; 
 int /*<<< orphan*/  so_cache_zone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct socket*) ; 

__attribute__((used)) static void
FUNC5(struct socket *so)
{

	FUNC1(so_cache_mtx);

	so_cache_time = FUNC3();
	if (++cached_sock_count > max_cached_sock_count) {
		--cached_sock_count;
		FUNC2(so_cache_mtx);
		FUNC4(so_cache_zone, so);
	} else {
		if (so_cache_hw < cached_sock_count)
			so_cache_hw = cached_sock_count;

		FUNC0(&so_cache_head, so, so_cache_ent);

		so->cache_timestamp = so_cache_time;
		FUNC2(so_cache_mtx);
	}
}