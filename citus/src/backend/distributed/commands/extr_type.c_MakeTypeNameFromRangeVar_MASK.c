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
typedef  int /*<<< orphan*/  TypeName ;
struct TYPE_3__ {scalar_t__ relname; scalar_t__ schemaname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static TypeName *
FUNC3(const RangeVar *relation)
{
	List *names = NIL;
	if (relation->schemaname)
	{
		names = FUNC0(names, FUNC1(relation->schemaname));
	}
	names = FUNC0(names, FUNC1(relation->relname));

	return FUNC2(names);
}