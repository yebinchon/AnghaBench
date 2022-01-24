#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_7__ {scalar_t__ vartype; scalar_t__ vartypmod; scalar_t__ varcollid; } ;
typedef  TYPE_1__ Var ;
struct TYPE_9__ {int /*<<< orphan*/  opfuncid; int /*<<< orphan*/  opresulttype; } ;
struct TYPE_8__ {scalar_t__ operatorId; scalar_t__ operatorClassInputType; char typeType; } ;
typedef  TYPE_2__ OperatorCacheEntry ;
typedef  TYPE_3__ OpExpr ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  Const ;

/* Variables and functions */
 scalar_t__ BTREE_AM_OID ; 
 int /*<<< orphan*/  COERCE_IMPLICIT_CAST ; 
 scalar_t__ InvalidOid ; 
 TYPE_2__* FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 char TYPTYPE_PSEUDO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

OpExpr *
FUNC6(Var *variable, int16 strategyNumber)
{
	Oid typeId = variable->vartype;
	Oid typeModId = variable->vartypmod;
	Oid collationId = variable->varcollid;

	OperatorCacheEntry *operatorCacheEntry = NULL;
	Oid accessMethodId = BTREE_AM_OID;
	Oid operatorId = InvalidOid;
	Oid operatorClassInputType = InvalidOid;
	Const *constantValue = NULL;
	OpExpr *expression = NULL;
	char typeType = 0;

	operatorCacheEntry = FUNC0(typeId, accessMethodId, strategyNumber);

	operatorId = operatorCacheEntry->operatorId;
	operatorClassInputType = operatorCacheEntry->operatorClassInputType;
	typeType = operatorCacheEntry->typeType;

	/*
	 * Relabel variable if input type of default operator class is not equal to
	 * the variable type. Note that we don't relabel the variable if the default
	 * operator class variable type is a pseudo-type.
	 */
	if (operatorClassInputType != typeId && typeType != TYPTYPE_PSEUDO)
	{
		variable = (Var *) FUNC4((Expr *) variable, operatorClassInputType,
										   -1, collationId, COERCE_IMPLICIT_CAST);
	}

	constantValue = FUNC3(operatorClassInputType, typeModId, collationId);

	/* Now make the expression with the given variable and a null constant */
	expression = (OpExpr *) FUNC5(operatorId,
										  InvalidOid, /* no result type yet */
										  false,      /* no return set */
										  (Expr *) variable,
										  (Expr *) constantValue,
										  InvalidOid, collationId);

	/* Set implementing function id and result type */
	expression->opfuncid = FUNC2(operatorId);
	expression->opresulttype = FUNC1(expression->opfuncid);

	return expression;
}