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
typedef  TYPE_1__* buf_t ;
struct TYPE_4__ {int /*<<< orphan*/  b_vp; int /*<<< orphan*/  b_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_DELWRI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nbdwrite ; 

void
FUNC4(buf_t bp) {

	if (FUNC1(bp->b_flags, B_DELWRI)) {
		FUNC0(bp->b_flags, B_DELWRI);

		FUNC2(-1, &nbdwrite);
		FUNC3(bp, bp->b_vp);
	}
}