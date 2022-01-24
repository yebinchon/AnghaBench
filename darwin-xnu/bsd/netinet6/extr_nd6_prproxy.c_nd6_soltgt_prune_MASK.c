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
typedef  scalar_t__ u_int32_t ;
struct nd6_prproxy_soltgt {scalar_t__ soltgt_cnt; int /*<<< orphan*/  soltgt_q; } ;
struct nd6_prproxy_solsrc {int dummy; } ;

/* Variables and functions */
 struct nd6_prproxy_solsrc* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nd6_prproxy_solsrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nd6_prproxy_solsrc*) ; 
 int /*<<< orphan*/  solsrc_tqe ; 

__attribute__((used)) static void
FUNC4(struct nd6_prproxy_soltgt *soltgt, u_int32_t max_ssrc)
{
	while (soltgt->soltgt_cnt >= max_ssrc) {
		struct nd6_prproxy_solsrc *ssrc;

		FUNC2(soltgt->soltgt_cnt != 0);
		--soltgt->soltgt_cnt;
		ssrc = FUNC0(&soltgt->soltgt_q);
		FUNC2(ssrc != NULL);
		FUNC1(&soltgt->soltgt_q, ssrc, solsrc_tqe);
		FUNC3(ssrc);
	}
}