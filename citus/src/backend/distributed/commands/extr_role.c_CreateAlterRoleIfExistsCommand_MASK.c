#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  role; } ;
struct TYPE_6__ {char const* data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_2__ AlterRoleStmt ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static const char *
FUNC5(AlterRoleStmt *stmt)
{
	StringInfoData alterRoleQueryBuffer = { 0 };
	const char *roleName = FUNC1(stmt->role, false);
	const char *alterRoleQuery = FUNC0((Node *) stmt);

	FUNC3(&alterRoleQueryBuffer);
	FUNC2(&alterRoleQueryBuffer,
					 "SELECT alter_role_if_exists(%s, %s)",
					 FUNC4(roleName),
					 FUNC4(alterRoleQuery));

	return alterRoleQueryBuffer.data;
}