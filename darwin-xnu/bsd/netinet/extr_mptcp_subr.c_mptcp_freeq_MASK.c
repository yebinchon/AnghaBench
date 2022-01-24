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
struct tseg_qent {int /*<<< orphan*/  tqe_m; } ;
struct mptcb {scalar_t__ mpt_reassqlen; int /*<<< orphan*/  mpt_segq; } ;

/* Variables and functions */
 struct tseg_qent* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tseg_qent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_reass_zone ; 
 int /*<<< orphan*/  tqe_q ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tseg_qent*) ; 

int
FUNC4(struct mptcb *mp_tp)
{
	struct tseg_qent *q;
	int rv = 0;

	while ((q = FUNC0(&mp_tp->mpt_segq)) != NULL) {
		FUNC1(q, tqe_q);
		FUNC2(q->tqe_m);
		FUNC3(tcp_reass_zone, q);
		rv = 1;
	}
	mp_tp->mpt_reassqlen = 0;
	return (rv);
}