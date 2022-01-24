#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* os_reason_t ;
struct TYPE_4__ {scalar_t__ osr_bufsize; int /*<<< orphan*/  osr_kcd_descriptor; int /*<<< orphan*/ * osr_kcd_buf; int /*<<< orphan*/  osr_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 TYPE_1__* OS_REASON_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(os_reason_t cur_reason)
{
	FUNC1(cur_reason != OS_REASON_NULL);
	FUNC0(&cur_reason->osr_lock, LCK_MTX_ASSERT_OWNED);

	if (cur_reason->osr_kcd_buf != NULL && cur_reason->osr_bufsize != 0) {
		FUNC3(cur_reason->osr_kcd_buf, cur_reason->osr_bufsize);
	}

	cur_reason->osr_bufsize = 0;
	cur_reason->osr_kcd_buf = NULL;
	FUNC2(&cur_reason->osr_kcd_descriptor, sizeof(cur_reason->osr_kcd_descriptor));

	return;
}