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
typedef  int u_int32_t ;
typedef  int u_int16_t ;
struct tcp_heuristic_key {int dummy; } ;
struct tcp_cache_key_src {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_heuristic_key*,int) ; 
 int FUNC1 (struct tcp_heuristic_key*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_cache_hash_seed ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_cache_key_src*,struct tcp_heuristic_key*) ; 
 int tcp_cache_size ; 

__attribute__((used)) static u_int16_t FUNC3(struct tcp_cache_key_src *tcks, struct tcp_heuristic_key *key)
{
	u_int32_t hash;

	FUNC0(key, sizeof(struct tcp_heuristic_key));

	FUNC2(tcks, key);

	hash = FUNC1(key, sizeof(struct tcp_heuristic_key),
	    tcp_cache_hash_seed);

	return (hash & (tcp_cache_size - 1));
}