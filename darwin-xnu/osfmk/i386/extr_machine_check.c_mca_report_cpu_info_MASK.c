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
struct TYPE_3__ {int /*<<< orphan*/  cpuid_brand_string; int /*<<< orphan*/  cpuid_signature; int /*<<< orphan*/  cpuid_microcode_version; int /*<<< orphan*/  cpuid_stepping; int /*<<< orphan*/  cpuid_model; int /*<<< orphan*/  cpuid_family; } ;
typedef  TYPE_1__ i386_cpu_info_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC2(void)
{
	i386_cpu_info_t *infop = FUNC0();

	FUNC1(" family: %d model: %d stepping: %d microcode: %d\n",
		infop->cpuid_family,
		infop->cpuid_model,
		infop->cpuid_stepping,
		infop->cpuid_microcode_version);
	FUNC1(" signature: 0x%x\n",
		infop->cpuid_signature);
	FUNC1(" %s\n",
		infop->cpuid_brand_string);

}