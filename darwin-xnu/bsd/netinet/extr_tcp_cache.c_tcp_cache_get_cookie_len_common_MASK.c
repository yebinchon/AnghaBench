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
struct tcp_cache_key_src {int dummy; } ;
struct tcp_cache_head {int dummy; } ;
struct tcp_cache {unsigned int tc_tfo_cookie_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_cache_head*) ; 
 struct tcp_cache* FUNC1 (struct tcp_cache_key_src*,int,struct tcp_cache_head**) ; 

__attribute__((used)) static unsigned int FUNC2(struct tcp_cache_key_src *tcks)
{
	struct tcp_cache_head *head;
	struct tcp_cache *tpcache;
	unsigned int cookie_len;

	/* Call lookup/create function */
	tpcache = FUNC1(tcks, 1, &head);
	if (tpcache == NULL)
		return (0);

	cookie_len = tpcache->tc_tfo_cookie_len;

	FUNC0(head);

	return cookie_len;
}