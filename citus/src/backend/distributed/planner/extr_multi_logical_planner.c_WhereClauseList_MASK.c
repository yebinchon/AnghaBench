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
struct TYPE_4__ {int /*<<< orphan*/ * baseQualifierList; } ;
typedef  TYPE_1__ QualifierWalkerContext ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  FromExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 

List *
FUNC3(FromExpr *fromExpr)
{
	FromExpr *fromExprCopy = FUNC1(fromExpr);
	QualifierWalkerContext *walkerContext = FUNC2(sizeof(QualifierWalkerContext));
	List *whereClauseList = NIL;

	FUNC0((Node *) fromExprCopy, walkerContext);
	whereClauseList = walkerContext->baseQualifierList;

	return whereClauseList;
}