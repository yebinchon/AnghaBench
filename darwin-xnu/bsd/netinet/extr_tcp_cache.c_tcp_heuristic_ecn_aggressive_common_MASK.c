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
struct tcp_heuristics_head {int dummy; } ;
struct tcp_heuristic {int th_ecn_aggressive; scalar_t__ th_ecn_backoff; } ;
struct tcp_cache_key_src {int dummy; } ;

/* Variables and functions */
 int TCP_CACHE_OVERFLOW_PROTECT ; 
 int /*<<< orphan*/  tcp_ecn_timeout ; 
 struct tcp_heuristic* FUNC0 (struct tcp_cache_key_src*,int,struct tcp_heuristics_head**) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_heuristics_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ tcp_now ; 

__attribute__((used)) static void FUNC3(struct tcp_cache_key_src *tcks)
{
	struct tcp_heuristics_head *head;
	struct tcp_heuristic *tpheur;

	tpheur = FUNC0(tcks, 1, &head);
	if (tpheur == NULL)
		return;

	/* Must be done before, otherwise we will start off with expo-backoff */
	tpheur->th_ecn_backoff = tcp_now +
		(FUNC2(tcp_ecn_timeout) << (tpheur->th_ecn_aggressive));

	/*
	 * Ugly way to prevent integer overflow... limit to prevent in
	 * overflow during exp. backoff.
	 */
	if (tpheur->th_ecn_aggressive < TCP_CACHE_OVERFLOW_PROTECT)
		tpheur->th_ecn_aggressive++;

	FUNC1(head);
}