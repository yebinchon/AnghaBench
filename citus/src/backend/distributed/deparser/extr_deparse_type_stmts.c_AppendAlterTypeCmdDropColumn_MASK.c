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
struct TYPE_3__ {scalar_t__ subtype; scalar_t__ behavior; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ AlterTableCmd ;

/* Variables and functions */
 scalar_t__ AT_DropColumn ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DROP_CASCADE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(StringInfo buf, AlterTableCmd *alterTableCmd)
{
	FUNC0(alterTableCmd->subtype == AT_DropColumn);
	FUNC1(buf, " DROP ATTRIBUTE %s", FUNC3(alterTableCmd->name));

	if (alterTableCmd->behavior == DROP_CASCADE)
	{
		FUNC2(buf, " CASCADE");
	}
}