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
struct TYPE_3__ {int /*<<< orphan*/ * relname; int /*<<< orphan*/ * schemaname; int /*<<< orphan*/ * catalogname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

List *
FUNC5(const RangeVar *rel)
{
	if (rel->catalogname != NULL)
	{
		FUNC0(rel->schemaname != NULL);
		FUNC0(rel->relname != NULL);
		return FUNC3(FUNC4(rel->catalogname),
						  FUNC4(rel->schemaname),
						  FUNC4(rel->relname));
	}
	else if (rel->schemaname != NULL)
	{
		FUNC0(rel->relname != NULL);
		return FUNC2(FUNC4(rel->schemaname),
						  FUNC4(rel->relname));
	}
	else
	{
		FUNC0(rel->relname != NULL);
		return FUNC1(FUNC4(rel->relname));
	}
}