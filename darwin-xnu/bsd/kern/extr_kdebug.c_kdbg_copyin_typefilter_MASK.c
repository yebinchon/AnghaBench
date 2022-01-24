#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/ * typefilter_t ;
struct TYPE_2__ {int /*<<< orphan*/  kdebug_iops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_TRACE ; 
 int EINVAL ; 
 int ENOMEM ; 
 size_t KDBG_TYPEFILTER_BITMAP_SIZE ; 
 int /*<<< orphan*/  KD_CALLBACK_TYPEFILTER_CHANGED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__ kd_ctrl_page ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kdbg_typefilter ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(user_addr_t addr, size_t size)
{
	int ret = ENOMEM;
	typefilter_t tf;

	FUNC4();

	if (size != KDBG_TYPEFILTER_BITMAP_SIZE) {
		return EINVAL;
	}

	if ((tf = FUNC7())) {
		if ((ret = FUNC0(addr, tf, KDBG_TYPEFILTER_BITMAP_SIZE)) == 0) {
			/* The kernel typefilter must always allow DBG_TRACE */
			FUNC5(tf, DBG_TRACE);

			/*
			 * If this is the first typefilter; claim it.
			 * Otherwise copy and deallocate.
			 *
			 * Allocating a typefilter for the copyin allows
			 * the kernel to hold the invariant that DBG_TRACE
			 * must always be allowed. 
			 */
			if (!kdbg_typefilter) {
				if ((ret = FUNC2(tf))) {
					return ret;
				}
				tf = NULL;
			} else {
				FUNC6(kdbg_typefilter, tf);
			}

			FUNC1();
			FUNC3(kd_ctrl_page.kdebug_iops, KD_CALLBACK_TYPEFILTER_CHANGED, kdbg_typefilter);
		}

		if (tf)
			FUNC8(tf);
	}

	return ret;
}