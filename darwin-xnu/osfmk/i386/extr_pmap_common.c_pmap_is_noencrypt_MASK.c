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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PHYS_NOENCRYPT ; 
 int /*<<< orphan*/  TRUE ; 
 int* pmap_phys_attributes ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

boolean_t
FUNC2(ppnum_t pn)
{
	int		pai;

	pai = FUNC1(pn);

	if (!FUNC0(pai))
		return (FALSE);

	if (pmap_phys_attributes[pai] & PHYS_NOENCRYPT)
		return (TRUE);

	return (FALSE);
}