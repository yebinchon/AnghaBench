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
struct TYPE_3__ {scalar_t__ rtekind; int /*<<< orphan*/  values_lists; } ;
typedef  TYPE_1__ RangeTblEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RTE_RELATION ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(RangeTblEntry *rangeTableEntry, int rteIdentifier)
{
	FUNC0(rangeTableEntry->rtekind == RTE_RELATION);

	rangeTableEntry->values_lists = FUNC1(rteIdentifier);
}