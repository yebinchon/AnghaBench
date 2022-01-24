#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_t ;
typedef  scalar_t__ mach_exception_data_type_t ;
struct TYPE_8__ {scalar_t__ subcode; scalar_t__ code; } ;
struct TYPE_9__ {TYPE_1__ guard_exc_info; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__ const) ; 
#define  GUARD_TYPE_FD 132 
#define  GUARD_TYPE_MACH_PORT 131 
#define  GUARD_TYPE_NONE 130 
#define  GUARD_TYPE_VIRT_MEMORY 129 
#define  GUARD_TYPE_VN 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__ const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__ const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__ const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__ const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__ const,scalar_t__ const) ; 

void
FUNC6(thread_t t)
{
	const mach_exception_data_type_t
		code = t->guard_exc_info.code,
		subcode = t->guard_exc_info.subcode;

	t->guard_exc_info.code = 0;
	t->guard_exc_info.subcode = 0;
	
	switch (FUNC0(code)) {
	case GUARD_TYPE_NONE:
		/* lingering AST_GUARD on the processor? */
		break;
	case GUARD_TYPE_MACH_PORT:
		FUNC2(t, code, subcode);
		break;
	case GUARD_TYPE_FD:
		FUNC1(t, code, subcode);
		break;
#if CONFIG_VNGUARD
	case GUARD_TYPE_VN:
		vn_guard_ast(t, code, subcode);
		break;
#endif
	case GUARD_TYPE_VIRT_MEMORY:
		FUNC4(t, code, subcode);
		break;
	default:
		FUNC3("guard_exc_info %llx %llx", code, subcode);
	}
}