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
struct TYPE_2__ {int /*<<< orphan*/  last_err; scalar_t__ num_founddevs; scalar_t__ hci_cmddone; scalar_t__ hci_inited; int /*<<< orphan*/ * info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  bte_ctrl_reqs ; 
 int /*<<< orphan*/  bte_pcbs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ btstate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2()
{
	FUNC0(&bte_pcbs);
	FUNC0(&bte_ctrl_reqs);

	if(btstate.info!=NULL) FUNC1(btstate.info);

	btstate.info = NULL;
	btstate.hci_inited = 0;
	btstate.hci_cmddone = 0;
	btstate.num_founddevs = 0;
	btstate.last_err = ERR_OK;
}