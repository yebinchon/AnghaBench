#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  paramkind; } ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  TYPE_1__ Param ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  Const ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IsVarNode ; 
 int /*<<< orphan*/  PARAM_SUBLINK ; 
 int /*<<< orphan*/  QTW_DONT_COPY_QUERY ; 
#define  T_ArrayCoerceExpr 139 
#define  T_CoerceToDomain 138 
#define  T_CoerceViaIO 137 
#define  T_DistinctExpr 136 
#define  T_FuncExpr 135 
#define  T_NullIfExpr 134 
#define  T_OpExpr 133 
#define  T_Param 132 
#define  T_Query 131 
#define  T_RelabelType 130 
#define  T_RowCompareExpr 129 
#define  T_ScalarArrayOpExpr 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ * (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ * (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *),int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

Node *
FUNC9(Node *expression, PlanState *planState)
{
	if (expression == NULL || FUNC1(expression, Const))
	{
		return expression;
	}

	switch (FUNC7(expression))
	{
		case T_Param:
		{
			Param *param = (Param *) expression;
			if (param->paramkind == PARAM_SUBLINK)
			{
				/* ExecInitExpr cannot handle PARAM_SUBLINK */
				return expression;
			}
		}

		/* fallthrough */

		case T_FuncExpr:
		case T_OpExpr:
		case T_DistinctExpr:
		case T_NullIfExpr:
		case T_CoerceViaIO:
		case T_ArrayCoerceExpr:
		case T_ScalarArrayOpExpr:
		case T_RowCompareExpr:
		case T_RelabelType:
		case T_CoerceToDomain:
		{
			if (FUNC0(expression, IsVarNode))
			{
				return (Node *) FUNC6(expression,
														PartiallyEvaluateExpression,
														planState);
			}

			return (Node *) FUNC2((Expr *) expression,
												FUNC4(expression),
												FUNC5(expression),
												FUNC3(expression),
												planState);
		}

		case T_Query:
		{
			return (Node *) FUNC8((Query *) expression,
											   PartiallyEvaluateExpression,
											   planState, QTW_DONT_COPY_QUERY);
		}

		default:
		{
			return (Node *) FUNC6(expression,
													PartiallyEvaluateExpression,
													planState);
		}
	}

	return expression;
}