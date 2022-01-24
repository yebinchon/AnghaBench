#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  mach_exception_data_type_t ;
struct TYPE_5__ {int osr_namespace; int /*<<< orphan*/  osr_code; } ;
struct TYPE_4__ {int /*<<< orphan*/  task; TYPE_3__* p_exit_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FLAVOR_HIGH_WATERMARK ; 
 int /*<<< orphan*/  JETSAM_REASON_MEMORY_PERPROCESSLIMIT ; 
#define  OS_REASON_JETSAM 128 
 TYPE_3__* OS_REASON_NULL ; 
 int /*<<< orphan*/  RESOURCE_TYPE_MEMORY ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(proc_t p, mach_exception_data_type_t *code, mach_exception_data_type_t *subcode)
{
	mach_exception_data_type_t code_update = *code;
	mach_exception_data_type_t subcode_update = *subcode;
	if (p->p_exit_reason == OS_REASON_NULL) {
		return;
	}

	switch (p->p_exit_reason->osr_namespace) {
		case OS_REASON_JETSAM:
			if (p->p_exit_reason->osr_code == JETSAM_REASON_MEMORY_PERPROCESSLIMIT) {
				/* Update the code with EXC_RESOURCE code for high memory watermark */
				FUNC1(code_update, RESOURCE_TYPE_MEMORY);
				FUNC0(code_update, FLAVOR_HIGH_WATERMARK);
				FUNC2(code_update, ((FUNC3(p->task)) >> 20));
				subcode_update = 0;
				break;
			}

			break;
		default:
			break;
	}

	*code = code_update;
	*subcode = subcode_update;
	return;
}