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
struct TYPE_3__ {int /*<<< orphan*/ * args; } ;
typedef  TYPE_1__ OpExpr ;
typedef  scalar_t__ NodeTag ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ T_Var ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(OpExpr *joinClause)
{
	List *argumentList = joinClause->args;
	Node *leftArgument = (Node *) FUNC4(argumentList);
	Node *rightArgument = (Node *) FUNC5(argumentList);
	Node *strippedLeftArgument = FUNC7(leftArgument);
	Node *strippedRightArgument = FUNC7(rightArgument);

	NodeTag leftArgumentType = FUNC6(strippedLeftArgument);
	NodeTag rightArgumentType = FUNC6(strippedRightArgument);

	if (leftArgumentType != T_Var || rightArgumentType != T_Var)
	{
		FUNC0(ERROR, (FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC3("cannot perform local joins that involve expressions"),
						FUNC2("local joins can be performed between columns only")));
	}
}