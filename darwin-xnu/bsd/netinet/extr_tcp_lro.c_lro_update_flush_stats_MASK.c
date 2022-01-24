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
struct TYPE_2__ {int lro_npkts; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lro_double_flushes ; 
 int /*<<< orphan*/  lro_flushes ; 
 int /*<<< orphan*/  lro_good_flushes ; 
 int /*<<< orphan*/  lro_single_flushes ; 

__attribute__((used)) static void
FUNC1(struct mbuf *m)
{
	lro_flushes++;
	switch(m->m_pkthdr.lro_npkts) {
	case 0: FUNC0(0);
	case 1: lro_single_flushes++;
		break;
	case 2: lro_double_flushes++;
		break;
	default: lro_good_flushes++;
		break;
	}
	return;
}