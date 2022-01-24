#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ aggkind; int aggnumdirectargs; scalar_t__ aggtransfn; char* aggtransspace; scalar_t__ aggfinalfn; int aggfinalmodify; char* aggmtransspace; scalar_t__ aggmfinalfn; scalar_t__ aggmtransfn; scalar_t__ aggminvtransfn; scalar_t__ aggcombinefn; scalar_t__ aggserialfn; scalar_t__ aggdeserialfn; scalar_t__ aggsortop; scalar_t__ aggmtranstype; scalar_t__ aggmfinalextra; scalar_t__ aggfinalextra; scalar_t__ aggtranstype; } ;
struct TYPE_9__ {scalar_t__ prokind; int proparallel; int /*<<< orphan*/  pronamespace; int /*<<< orphan*/  proname; } ;
struct TYPE_8__ {char* data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  char RegProcedure ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;
typedef  TYPE_3__* Form_pg_aggregate ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AGGFNOID ; 
 scalar_t__ AGGKIND_HYPOTHETICAL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
#define  AGGMODIFY_READ_ONLY 135 
#define  AGGMODIFY_READ_WRITE 134 
#define  AGGMODIFY_SHAREABLE 133 
 int /*<<< orphan*/  Anum_pg_aggregate_agginitval ; 
 int /*<<< orphan*/  Anum_pg_aggregate_aggminitval ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidOid ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
#define  PROARGMODE_IN 132 
#define  PROARGMODE_VARIADIC 131 
 int /*<<< orphan*/  PROCOID ; 
 scalar_t__ PROKIND_AGGREGATE ; 
#define  PROPARALLEL_RESTRICTED 130 
#define  PROPARALLEL_SAFE 129 
#define  PROPARALLEL_UNSAFE 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char const) ; 
 char* FUNC14 (scalar_t__) ; 
 char* FUNC15 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC16 (int /*<<< orphan*/ *,scalar_t__**,char***,char**) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* FUNC20 (char*) ; 
 char* FUNC21 (char*) ; 
 char* FUNC22 (scalar_t__) ; 
 char* FUNC23 (char const*,char const*) ; 

__attribute__((used)) static char *
FUNC24(const RegProcedure funcOid, bool useCreateOrReplace)
{
	StringInfoData buf = { 0 };
	HeapTuple proctup = NULL;
	Form_pg_proc proc = NULL;
	HeapTuple aggtup = NULL;
	Form_pg_aggregate agg = NULL;
	const char *name = NULL;
	const char *nsp = NULL;
	int numargs = 0;
	int i = 0;
	Oid *argtypes = NULL;
	char **argnames = NULL;
	char *argmodes = NULL;
	int insertorderbyat = -1;
	int argsprinted = 0;
	int inputargno = 0;

	proctup = FUNC6(PROCOID, funcOid);
	if (!FUNC3(proctup))
	{
		FUNC13(ERROR, "cache lookup failed for %d", funcOid);
	}

	proc = (Form_pg_proc) FUNC2(proctup);

	FUNC1(proc->prokind == PROKIND_AGGREGATE);

	FUNC18(&buf);

	name = FUNC4(proc->proname);
	nsp = FUNC17(proc->pronamespace);

#if PG_VERSION_NUM >= 120000
	if (useCreateOrReplace)
	{
		appendStringInfo(&buf, "CREATE OR REPLACE AGGREGATE %s(",
						 quote_qualified_identifier(nsp, name));
	}
	else
	{
		appendStringInfo(&buf, "CREATE AGGREGATE %s(",
						 quote_qualified_identifier(nsp, name));
	}
#else
	FUNC10(&buf, "CREATE AGGREGATE %s(",
					 FUNC23(nsp, name));
#endif

	/* Parameters, borrows heavily from print_function_arguments in postgres */
	numargs = FUNC16(proctup, &argtypes, &argnames, &argmodes);

	aggtup = FUNC6(AGGFNOID, funcOid);
	if (!FUNC3(aggtup))
	{
		FUNC13(ERROR, "cache lookup failed for %d", funcOid);
	}
	agg = (Form_pg_aggregate) FUNC2(aggtup);

	if (FUNC0(agg->aggkind))
	{
		insertorderbyat = agg->aggnumdirectargs;
	}

	for (i = 0; i < numargs; i++)
	{
		Oid argtype = argtypes[i];
		char *argname = argnames ? argnames[i] : NULL;
		char argmode = argmodes ? argmodes[i] : PROARGMODE_IN;
		const char *modename;

		switch (argmode)
		{
			case PROARGMODE_IN:
			{
				modename = "";
				break;
			}

			case PROARGMODE_VARIADIC:
			{
				modename = "VARIADIC ";
				break;
			}

			default:
			{
				FUNC13(ERROR, "unexpected parameter mode '%c'", argmode);
				modename = NULL;
				break;
			}
		}

		inputargno++;       /* this is a 1-based counter */
		if (argsprinted == insertorderbyat)
		{
			FUNC12(&buf, " ORDER BY ");
		}
		else if (argsprinted)
		{
			FUNC12(&buf, ", ");
		}

		FUNC12(&buf, modename);

		if (argname && argname[0])
		{
			FUNC10(&buf, "%s ", FUNC20(argname));
		}

		FUNC12(&buf, FUNC14(argtype));

		argsprinted++;

		/* nasty hack: print the last arg twice for variadic ordered-set agg */
		if (argsprinted == insertorderbyat && i == numargs - 1)
		{
			i--;
		}
	}

	FUNC10(&buf, ") (STYPE = %s,SFUNC = %s",
					 FUNC14(agg->aggtranstype),
					 FUNC22(agg->aggtransfn));

	if (agg->aggtransspace != 0)
	{
		FUNC10(&buf, ", SSPACE = %d", agg->aggtransspace);
	}

	if (agg->aggfinalfn != InvalidOid)
	{
		const char *finalmodifystring = NULL;
		switch (agg->aggfinalmodify)
		{
			case AGGMODIFY_READ_ONLY:
			{
				finalmodifystring = "READ_ONLY";
				break;
			}

			case AGGMODIFY_SHAREABLE:
			{
				finalmodifystring = "SHAREABLE";
				break;
			}

			case AGGMODIFY_READ_WRITE:
			{
				finalmodifystring = "READ_WRITE";
				break;
			}
		}

		FUNC10(&buf, ", FINALFUNC = %s",
						 FUNC22(agg->aggfinalfn));

		if (finalmodifystring != NULL)
		{
			FUNC10(&buf, ", FINALFUNC_MODIFY = %s", finalmodifystring);
		}

		if (agg->aggfinalextra)
		{
			FUNC12(&buf, ", FINALFUNC_EXTRA");
		}
	}

	if (agg->aggmtransspace != 0)
	{
		FUNC10(&buf, ", MSSPACE = %d", agg->aggmtransspace);
	}

	if (agg->aggmfinalfn)
	{
		const char *mfinalmodifystring = NULL;
		switch (agg->aggfinalmodify)
		{
			case AGGMODIFY_READ_ONLY:
			{
				mfinalmodifystring = "READ_ONLY";
				break;
			}

			case AGGMODIFY_SHAREABLE:
			{
				mfinalmodifystring = "SHAREABLE";
				break;
			}

			case AGGMODIFY_READ_WRITE:
			{
				mfinalmodifystring = "READ_WRITE";
				break;
			}
		}

		FUNC10(&buf, ", MFINALFUNC = %s",
						 FUNC22(agg->aggmfinalfn));

		if (mfinalmodifystring != NULL)
		{
			FUNC10(&buf, ", MFINALFUNC_MODIFY = %s", mfinalmodifystring);
		}

		if (agg->aggmfinalextra)
		{
			FUNC12(&buf, ", MFINALFUNC_EXTRA");
		}
	}

	if (agg->aggmtransfn)
	{
		FUNC10(&buf, ", MSFUNC = %s",
						 FUNC22(agg->aggmtransfn));

		if (agg->aggmtranstype)
		{
			FUNC10(&buf, ", MSTYPE = %s",
							 FUNC14(agg->aggmtranstype));
		}
	}

	if (agg->aggtransspace != 0)
	{
		FUNC10(&buf, ", SSPACE = %d", agg->aggtransspace);
	}

	if (agg->aggminvtransfn)
	{
		FUNC10(&buf, ", MINVFUNC = %s",
						 FUNC22(agg->aggminvtransfn));
	}

	if (agg->aggcombinefn)
	{
		FUNC10(&buf, ", COMBINEFUNC = %s",
						 FUNC22(agg->aggcombinefn));
	}

	if (agg->aggserialfn)
	{
		FUNC10(&buf, ", SERIALFUNC = %s",
						 FUNC22(agg->aggserialfn));
	}

	if (agg->aggdeserialfn)
	{
		FUNC10(&buf, ", DESERIALFUNC = %s",
						 FUNC22(agg->aggdeserialfn));
	}

	if (agg->aggsortop != InvalidOid)
	{
		FUNC10(&buf, ", SORTOP = %s",
						 FUNC15(agg->aggsortop, argtypes[0],
												argtypes[0]));
	}

	{
		const char *parallelstring = NULL;
		switch (proc->proparallel)
		{
			case PROPARALLEL_SAFE:
			{
				parallelstring = "SAFE";
				break;
			}

			case PROPARALLEL_RESTRICTED:
			{
				parallelstring = "RESTRICTED";
				break;
			}

			case PROPARALLEL_UNSAFE:
			{
				break;
			}

			default:
			{
				FUNC13(WARNING, "Unknown parallel option, ignoring: %c", proc->proparallel);
				break;
			}
		}

		if (parallelstring != NULL)
		{
			FUNC10(&buf, ", PARALLEL = %s", parallelstring);
		}
	}

	{
		bool isNull = false;
		Datum textInitVal = FUNC7(AGGFNOID, aggtup,
											Anum_pg_aggregate_agginitval,
											&isNull);
		if (!isNull)
		{
			char *strInitVal = FUNC8(textInitVal);
			char *strInitValQuoted = FUNC21(strInitVal);

			FUNC10(&buf, ", INITCOND = %s", strInitValQuoted);

			FUNC19(strInitValQuoted);
			FUNC19(strInitVal);
		}
	}

	{
		bool isNull = false;
		Datum textInitVal = FUNC7(AGGFNOID, aggtup,
											Anum_pg_aggregate_aggminitval,
											&isNull);
		if (!isNull)
		{
			char *strInitVal = FUNC8(textInitVal);
			char *strInitValQuoted = FUNC21(strInitVal);

			FUNC10(&buf, ", MINITCOND = %s", strInitValQuoted);

			FUNC19(strInitValQuoted);
			FUNC19(strInitVal);
		}
	}

	if (agg->aggkind == AGGKIND_HYPOTHETICAL)
	{
		FUNC12(&buf, ", HYPOTHETICAL");
	}

	FUNC11(&buf, ')');

	FUNC5(aggtup);
	FUNC5(proctup);

#if PG_VERSION_NUM < 120000
	if (useCreateOrReplace)
	{
		return FUNC9(buf.data);
	}
#endif
	return buf.data;
}