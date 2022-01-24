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
struct knote {scalar_t__ kn_hook_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  kq_wqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct knote*) ; 
 TYPE_1__* FUNC1 (struct knote*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct knote *kn)
{
	FUNC0(kn);

	/*
	 * This is potentially tricky: the device's selinfo waitq that was
	 * tricked into being part of this knote's waitq set may not be a part
	 * of any other set, and the device itself may have revoked the memory
	 * in which the waitq was held. We use the knote's kn_hook_data field
	 * to keep the ID of the waitq's prepost table object. This
	 * object keeps a pointer back to the waitq, and gives us a safe way
	 * to decouple the dereferencing of driver allocated memory: if the
	 * driver goes away (taking the waitq with it) then the prepost table
	 * object will be invalidated. The waitq details are handled in the
	 * waitq API invoked here.
	 */
	if (kn->kn_hook_data) {
		FUNC2(kn->kn_hook_data, &(FUNC1(kn)->kq_wqs));
		kn->kn_hook_data = 0;
	}
}