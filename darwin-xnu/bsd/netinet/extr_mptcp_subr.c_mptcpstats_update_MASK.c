#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mptsub {int /*<<< orphan*/  mpts_socket; } ;
struct mptcp_itf_stats {int /*<<< orphan*/  mpis_rxbytes; int /*<<< orphan*/  mpis_txbytes; } ;
struct inpcb {TYPE_1__* inp_stat; } ;
struct TYPE_2__ {scalar_t__ rxbytes; scalar_t__ txbytes; } ;

/* Variables and functions */
 int FUNC0 (struct mptcp_itf_stats*,struct mptsub*) ; 
 struct inpcb* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct mptcp_itf_stats *stats, struct mptsub *mpts)
{
	int index = FUNC0(stats, mpts);

	if (index != -1) {
		struct inpcb *inp = FUNC1(mpts->mpts_socket);

		stats[index].mpis_txbytes += inp->inp_stat->txbytes;
		stats[index].mpis_rxbytes += inp->inp_stat->rxbytes;
	}
}