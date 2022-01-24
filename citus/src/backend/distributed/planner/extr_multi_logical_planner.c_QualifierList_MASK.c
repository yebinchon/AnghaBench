#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  outerJoinQualifierList; int /*<<< orphan*/  baseQualifierList; } ;
typedef  TYPE_1__ QualifierWalkerContext ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  FromExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int) ; 

List *
FUNC4(FromExpr *fromExpr)
{
	FromExpr *fromExprCopy = FUNC1(fromExpr);
	QualifierWalkerContext *walkerContext = FUNC3(sizeof(QualifierWalkerContext));
	List *qualifierList = NIL;

	FUNC0((Node *) fromExprCopy, walkerContext);
	qualifierList = FUNC2(qualifierList, walkerContext->baseQualifierList);
	qualifierList = FUNC2(qualifierList, walkerContext->outerJoinQualifierList);

	return qualifierList;
}