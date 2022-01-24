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
struct TYPE_3__ {int /*<<< orphan*/  func; int /*<<< orphan*/  objtype; } ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__ AlterFunctionStmt ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

const ObjectAddress *
FUNC1(AlterFunctionStmt *stmt, bool missing_ok)
{
	return FUNC0(stmt->objtype, stmt->func, missing_ok);
}