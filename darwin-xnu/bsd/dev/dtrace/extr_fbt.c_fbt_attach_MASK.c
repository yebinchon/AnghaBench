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
typedef  int /*<<< orphan*/  fbt_probe_t ;
typedef  int /*<<< orphan*/  dev_info_t ;

/* Variables and functions */
 scalar_t__ DDI_FAILURE ; 
 int /*<<< orphan*/  DDI_PSEUDO ; 
 int DDI_SUCCESS ; 
 int /*<<< orphan*/  DTRACE_PRIV_KERNEL ; 
 int FBT_PROBETAB_SIZE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  S_IFCHR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fbt_attr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fbt_id ; 
 int /*<<< orphan*/  fbt_invop ; 
 int /*<<< orphan*/  fbt_pops ; 
 int /*<<< orphan*/  fbt_probetab ; 
 int fbt_probetab_mask ; 
 int fbt_probetab_size ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(dev_info_t *devi)
{
	if (fbt_probetab_size == 0)
		fbt_probetab_size = FBT_PROBETAB_SIZE;

	fbt_probetab_mask = fbt_probetab_size - 1;
	fbt_probetab =
	    FUNC4(fbt_probetab_size * sizeof (fbt_probe_t *), KM_SLEEP);

	FUNC1(fbt_invop);

	if (FUNC0(devi, "fbt", S_IFCHR, 0,
	    DDI_PSEUDO, 0) == DDI_FAILURE ||
	    FUNC2("fbt", &fbt_attr, DTRACE_PRIV_KERNEL, NULL,
	    &fbt_pops, NULL, &fbt_id) != 0) {
		FUNC3(devi);
		return (DDI_FAILURE);
	}

	return (DDI_SUCCESS);
}