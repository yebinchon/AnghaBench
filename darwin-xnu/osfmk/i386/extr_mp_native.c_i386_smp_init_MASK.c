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
typedef  int /*<<< orphan*/  i386_intr_func_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slave_pstart ; 

boolean_t
FUNC5(int nmi_vector, i386_intr_func_t nmi_handler, int ipi_vector, i386_intr_func_t ipi_handler)
{
	/* Local APIC? */
	if (!FUNC3())
		return FALSE;

	FUNC2();
	FUNC1();
	FUNC4(nmi_vector,  nmi_handler);
	FUNC4(ipi_vector, ipi_handler);

	FUNC0(slave_pstart);

	return TRUE;
}