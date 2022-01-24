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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ const kernel_section_t ;
typedef  int /*<<< orphan*/  kernel_mach_header_t ;

/* Variables and functions */
 TYPE_1__ const* FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 

uint32_t
FUNC1(
    kernel_mach_header_t *mhp,
    const char *segname,
    const char *sectname)
{
	const kernel_section_t *sp;

	sp = FUNC0(mhp, segname, sectname);
	if(sp == (kernel_section_t *)0){
	    return(0);
	}

	return sp->offset;
}