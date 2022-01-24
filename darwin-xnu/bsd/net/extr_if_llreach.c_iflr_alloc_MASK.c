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
struct if_llreach {int /*<<< orphan*/  lr_debug; int /*<<< orphan*/  lr_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFD_ALLOC ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct if_llreach*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iflr_size ; 
 int /*<<< orphan*/  iflr_zone ; 
 int /*<<< orphan*/  ifnet_lock_attr ; 
 int /*<<< orphan*/  ifnet_lock_group ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct if_llreach* FUNC2 (int /*<<< orphan*/ ) ; 
 struct if_llreach* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct if_llreach *
FUNC4(int how)
{
	struct if_llreach *lr;

	lr = (how == M_WAITOK) ? FUNC2(iflr_zone) : FUNC3(iflr_zone);
	if (lr != NULL) {
		FUNC0(lr, iflr_size);
		FUNC1(&lr->lr_lock, ifnet_lock_group, ifnet_lock_attr);
		lr->lr_debug |= IFD_ALLOC;
	}
	return (lr);
}