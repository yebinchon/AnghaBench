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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fbt_invop ; 
 int /*<<< orphan*/ * fbt_probetab ; 
 scalar_t__ fbt_probetab_mask ; 
 int fbt_probetab_size ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(dev_info_t *devi)
{
	FUNC1(fbt_invop);
	FUNC0(devi, NULL);
	FUNC2(fbt_probetab, fbt_probetab_size * sizeof (fbt_probe_t *));
	fbt_probetab = NULL;
	fbt_probetab_mask = 0;
}