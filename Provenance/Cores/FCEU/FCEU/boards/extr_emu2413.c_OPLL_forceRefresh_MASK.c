#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_3__ {int /*<<< orphan*/ * slot; } ;
typedef  TYPE_1__ OPLL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(OPLL * opll) {
	int32 i;

	if (opll == NULL)
		return;

	for (i = 0; i < 12; i++) {
		FUNC1(&opll->slot[i]);
		FUNC2(&opll->slot[i]);
		FUNC3(&opll->slot[i]);
		FUNC4(&opll->slot[i]);
		FUNC0(&opll->slot[i]);
	}
}