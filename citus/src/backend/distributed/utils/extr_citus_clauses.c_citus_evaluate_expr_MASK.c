#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  int int16 ;
struct TYPE_9__ {int /*<<< orphan*/  es_query_cxt; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ps_ExprContext; } ;
typedef  TYPE_1__ PlanState ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  int /*<<< orphan*/  ExprContext ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_2__ EState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static Expr *
FUNC12(Expr *expr, Oid result_type, int32 result_typmod,
					Oid result_collation, PlanState *planState)
{
	EState     *estate;
	ExprState  *exprstate;
	ExprContext *econtext;
	MemoryContext oldcontext;
	Datum		const_val;
	bool		const_is_null;
	int16		resultTypLen;
	bool		resultTypByVal;

	/*
	 * To use the executor, we need an EState.
	 */
	estate = FUNC0();

	/* We can use the estate's working context to avoid memory leaks. */
	oldcontext = FUNC5(estate->es_query_cxt);

	/* Make sure any opfuncids are filled in. */
	FUNC9((Node *) expr);

	/*
	 * Prepare expr for execution.  (Note: we can't use ExecPrepareExpr
	 * because it'd result in recursively invoking eval_const_expressions.)
	 */
	exprstate = FUNC2(expr, planState);

	if (planState != NULL)
	{
		/* use executor's context to pass down parameters */
		econtext = planState->ps_ExprContext;
	}
	else
	{
		/* when called from a function, use a default context */
		econtext = FUNC4(estate);
	}

	/*
	 * And evaluate it.
	 */
	const_val = FUNC1(exprstate, econtext, &const_is_null);

	/* Get info needed about result datatype */
	FUNC10(result_type, &resultTypLen, &resultTypByVal);

	/* Get back to outer memory context */
	FUNC5(oldcontext);

	/*
	 * Must copy result out of sub-context used by expression eval.
	 *
	 * Also, if it's varlena, forcibly detoast it.  This protects us against
	 * storing TOAST pointers into plans that might outlive the referenced
	 * data.  (makeConst would handle detoasting anyway, but it's worth a few
	 * extra lines here so that we can do the copy and detoast in one step.)
	 */
	if (!const_is_null)
	{
		if (resultTypLen == -1)
			const_val = FUNC7(FUNC6(const_val));
		else
			const_val = FUNC8(const_val, resultTypByVal, resultTypLen);
	}

	/* Release all the junk we just created */
	FUNC3(estate);

	/*
	 * Make the constant result node.
	 */
	return (Expr *) FUNC11(result_type, result_typmod, result_collation,
							  resultTypLen,
							  const_val, const_is_null,
							  resultTypByVal);
}