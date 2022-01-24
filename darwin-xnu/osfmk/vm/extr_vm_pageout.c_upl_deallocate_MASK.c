#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* upl_t ;
struct TYPE_9__ {scalar_t__ ref_count; scalar_t__ upl_iodone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

void
FUNC6(upl_t upl)
{
	FUNC2(upl);

	if (--upl->ref_count == 0) {
		if(FUNC5(upl))
			FUNC4(upl);
		FUNC3(upl);

		if (upl->upl_iodone)
		        FUNC0(upl);

		FUNC1(upl);
	} else
		FUNC3(upl);
}