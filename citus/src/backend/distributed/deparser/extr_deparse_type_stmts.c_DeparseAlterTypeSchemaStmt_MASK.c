#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ objectType; } ;
struct TYPE_7__ {char const* data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ AlterObjectSchemaStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ OBJECT_TYPE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

const char *
FUNC3(AlterObjectSchemaStmt *stmt)
{
	StringInfoData str = { 0 };
	FUNC2(&str);

	FUNC1(stmt->objectType == OBJECT_TYPE);

	FUNC0(&str, stmt);

	return str.data;
}