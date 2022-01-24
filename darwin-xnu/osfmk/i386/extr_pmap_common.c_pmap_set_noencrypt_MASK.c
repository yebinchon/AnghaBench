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
typedef  int /*<<< orphan*/  ppnum_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PHYS_NOENCRYPT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * pmap_phys_attributes ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(ppnum_t pn)
{
	int		pai;

	pai = FUNC3(pn);

	if (FUNC0(pai)) {
		FUNC1(pai);

		pmap_phys_attributes[pai] |= PHYS_NOENCRYPT;

		FUNC2(pai);
	}
}