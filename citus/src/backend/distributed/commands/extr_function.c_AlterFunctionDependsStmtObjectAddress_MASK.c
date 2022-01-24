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
struct TYPE_3__ {int /*<<< orphan*/  object; int /*<<< orphan*/  objectType; } ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__ AlterObjectDependsStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ObjectWithArgs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const ObjectAddress *
FUNC3(AlterObjectDependsStmt *stmt, bool missing_ok)
{
	FUNC0(stmt->objectType);

	return FUNC1(stmt->objectType,
								   FUNC2(ObjectWithArgs, stmt->object), missing_ok);
}