#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ptrdiff_t ;
struct TYPE_3__ {int /*<<< orphan*/ * cd_shadow; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 int /*<<< orphan*/ * cpshadows ; 
 TYPE_1__* FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(int ncpus) {
	for (int i = 0; i < ncpus; i++) {
		cpu_data_t	*cpup = FUNC0(i);
		ptrdiff_t	coff = cpup - FUNC0(0);

		cpup->cd_shadow = &cpshadows[coff];
	}
}