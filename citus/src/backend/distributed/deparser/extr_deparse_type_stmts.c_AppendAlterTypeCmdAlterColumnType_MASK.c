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
struct TYPE_3__ {scalar_t__ subtype; scalar_t__ behavior; int /*<<< orphan*/  def; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ AlterTableCmd ;

/* Variables and functions */
 scalar_t__ AT_AlterColumnType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ColumnDef ; 
 scalar_t__ DROP_CASCADE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(StringInfo buf, AlterTableCmd *alterTableCmd)
{
	FUNC1(alterTableCmd->subtype == AT_AlterColumnType);
	FUNC2(buf, " ALTER ATTRIBUTE %s SET DATA TYPE ", FUNC5(
						 alterTableCmd->name));
	FUNC0(buf, FUNC4(ColumnDef, alterTableCmd->def));

	if (alterTableCmd->behavior == DROP_CASCADE)
	{
		FUNC3(buf, " CASCADE");
	}
}