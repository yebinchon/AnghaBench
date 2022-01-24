#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct tcp_heuristics_head {int dummy; } ;
struct tcp_cache_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tcp_caches; int /*<<< orphan*/  tch_mtx; } ;
struct TYPE_3__ {int /*<<< orphan*/  tcp_heuristics; int /*<<< orphan*/  thh_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_ZERO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int sane_size ; 
 TYPE_2__* tcp_cache ; 
 int /*<<< orphan*/  tcp_cache_hash_seed ; 
 int /*<<< orphan*/  tcp_cache_mtx_attr ; 
 int /*<<< orphan*/  tcp_cache_mtx_grp ; 
 int /*<<< orphan*/  tcp_cache_mtx_grp_attr ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int tcp_cache_size ; 
 int /*<<< orphan*/  tcp_heuristic_mtx_attr ; 
 int /*<<< orphan*/  tcp_heuristic_mtx_grp ; 
 int /*<<< orphan*/  tcp_heuristic_mtx_grp_attr ; 
 TYPE_1__* tcp_heuristics ; 

void FUNC9(void)
{
	uint64_t sane_size_meg = sane_size / 1024 / 1024;
	int i;

	/*
	 * On machines with <100MB of memory this will result in a (full) cache-size
	 * of 32 entries, thus 32 * 5 * 64bytes = 10KB. (about 0.01 %)
	 * On machines with > 4GB of memory, we have a cache-size of 1024 entries,
	 * thus about 327KB.
	 *
	 * Side-note: we convert to u_int32_t. If sane_size is more than
	 * 16000 TB, we loose precision. But, who cares? :)
	 */
	tcp_cache_size = FUNC8((u_int32_t)(sane_size_meg >> 2));
	if (tcp_cache_size < 32)
		tcp_cache_size = 32;
	else if (tcp_cache_size > 1024)
		tcp_cache_size = 1024;

	tcp_cache = FUNC2(sizeof(struct tcp_cache_head) * tcp_cache_size,
	    M_TEMP, M_ZERO);
	if (tcp_cache == NULL)
		FUNC7("Allocating tcp_cache failed at boot-time!");

	tcp_cache_mtx_grp_attr = FUNC5();
	tcp_cache_mtx_grp = FUNC4("tcpcache", tcp_cache_mtx_grp_attr);
	tcp_cache_mtx_attr = FUNC3();

	tcp_heuristics = FUNC2(sizeof(struct tcp_heuristics_head) * tcp_cache_size,
	    M_TEMP, M_ZERO);
	if (tcp_heuristics == NULL)
		FUNC7("Allocating tcp_heuristic failed at boot-time!");

	tcp_heuristic_mtx_grp_attr = FUNC5();
	tcp_heuristic_mtx_grp = FUNC4("tcpheuristic", tcp_heuristic_mtx_grp_attr);
	tcp_heuristic_mtx_attr = FUNC3();

	for (i = 0; i < tcp_cache_size; i++) {
		FUNC6(&tcp_cache[i].tch_mtx, tcp_cache_mtx_grp,
		    tcp_cache_mtx_attr);
		FUNC1(&tcp_cache[i].tcp_caches);

		FUNC6(&tcp_heuristics[i].thh_mtx, tcp_heuristic_mtx_grp,
		    tcp_heuristic_mtx_attr);
		FUNC1(&tcp_heuristics[i].tcp_heuristics);
	}

	tcp_cache_hash_seed = FUNC0();
}