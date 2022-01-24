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
typedef  scalar_t__ u_int8_t ;
typedef  int /*<<< orphan*/  u_char ;
struct tcp_cache_key_src {int dummy; } ;
struct tcp_cache_head {int dummy; } ;
struct tcp_cache {scalar_t__ tc_tfo_cookie_len; int /*<<< orphan*/  tc_tfo_cookie; } ;

/* Variables and functions */
 scalar_t__ TFO_COOKIE_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_cache_head*) ; 
 struct tcp_cache* FUNC2 (struct tcp_cache_key_src*,int,struct tcp_cache_head**) ; 

__attribute__((used)) static void FUNC3(struct tcp_cache_key_src *tcks, u_char *cookie, u_int8_t len)
{
	struct tcp_cache_head *head;
	struct tcp_cache *tpcache;

	/* Call lookup/create function */
	tpcache = FUNC2(tcks, 1, &head);
	if (tpcache == NULL)
		return;

	tpcache->tc_tfo_cookie_len = len > TFO_COOKIE_LEN_MAX ?
		TFO_COOKIE_LEN_MAX : len;
	FUNC0(tpcache->tc_tfo_cookie, cookie, tpcache->tc_tfo_cookie_len);

	FUNC1(head);
}