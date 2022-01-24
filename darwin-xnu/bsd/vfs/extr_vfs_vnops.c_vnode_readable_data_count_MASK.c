#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vnode_t ;
typedef  scalar_t__ off_t ;
typedef  int int64_t ;
struct TYPE_9__ {TYPE_1__* vu_ubcinfo; } ;
struct TYPE_10__ {TYPE_2__ v_un; } ;
struct TYPE_8__ {scalar_t__ ui_size; } ;

/* Variables and functions */
 scalar_t__ INT64_MAX ; 
 scalar_t__ INT64_MIN ; 
 int FUNC0 (TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static int64_t
FUNC4(vnode_t vp, off_t current_offset, int ispoll)
{
	if (FUNC2(vp)) {
#if FIFO
		int cnt;
		int err = fifo_charcount(vp, &cnt);
		if (err == 0) {
			return (int64_t)cnt;
		} else 
#endif
		{
			return 0;
		}
	} else if (FUNC3(vp)) {
		if (ispoll) {
			return 1;
		}

		off_t amount;
		amount = vp->v_un.vu_ubcinfo->ui_size - current_offset;
		if (amount > INT64_MAX) {
			return INT64_MAX;
		} else if (amount < INT64_MIN) {
			return INT64_MIN;
		} else {
			return (int64_t)amount;
		} 
	} else {
		FUNC1("Should never have an EVFILT_READ except for reg or fifo.");
		return 0;
	}
}