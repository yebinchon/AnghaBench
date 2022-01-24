#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpc_reader ;
struct TYPE_9__ {int chap_nb; struct TYPE_9__* seek_table; int /*<<< orphan*/  si; int /*<<< orphan*/  d; int /*<<< orphan*/ * r; } ;
typedef  TYPE_1__ mpc_demux ;

/* Variables and functions */
 scalar_t__ MPC_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

mpc_demux * FUNC7(mpc_reader * p_reader)
{
	mpc_demux* p_tmp = FUNC1(sizeof(mpc_demux));

	if (p_tmp != 0) {
		FUNC2(p_tmp, 0, sizeof(mpc_demux));
		p_tmp->r = p_reader;
		p_tmp->chap_nb = -1;
		FUNC4(p_tmp);
		if (FUNC5(p_tmp) == MPC_STATUS_OK &&
				  FUNC6(p_tmp) == MPC_STATUS_OK) {
			p_tmp->d = FUNC3(&p_tmp->si);
		} else {
			if (p_tmp->seek_table)
				FUNC0(p_tmp->seek_table);
			FUNC0(p_tmp);
			p_tmp = 0;
		}
	}

	return p_tmp;
}