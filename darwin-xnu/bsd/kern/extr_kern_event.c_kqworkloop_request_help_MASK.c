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
typedef  scalar_t__ kq_index_t ;

/* Variables and functions */
 scalar_t__ KQWL_NBUCKETS ; 
 int /*<<< orphan*/  KQWL_UTQ_UPDATE_WAKEUP_QOS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC2 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC3 (struct kqworkloop*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct kqworkloop *kqwl, kq_index_t qos_index)
{
	/* convert to thread qos value */
	FUNC0(qos_index < KQWL_NBUCKETS);

	FUNC1(kqwl);
	FUNC3(kqwl, KQWL_UTQ_UPDATE_WAKEUP_QOS, qos_index);
	FUNC2(kqwl);
}