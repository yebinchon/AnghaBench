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
struct kqworkloop {int dummy; } ;
typedef  int /*<<< orphan*/  kq_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  KQWL_UTQ_UPDATE_WAKEUP_OVERRIDE ; 
 int /*<<< orphan*/  FUNC0 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC1 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC2 (struct kqworkloop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct kqworkloop *kqwl, kq_index_t override_index)
{
	FUNC0(kqwl);
	FUNC2(kqwl, KQWL_UTQ_UPDATE_WAKEUP_OVERRIDE,
			override_index);
	FUNC1(kqwl);
}