#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int maxSize; size_t size; char** keywords; char** values; } ;
struct TYPE_4__ {char* hostname; char* database; char* user; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  size_t Index ;
typedef  TYPE_1__ ConnectionHashKey ;

/* Variables and functions */
 TYPE_3__ ConnParams ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC0 () ; 
 char** FUNC1 (int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 size_t FUNC6 (char const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void
FUNC8(ConnectionHashKey *key, char ***keywords, char ***values,
			  Index *runtimeParamStart, MemoryContext context)
{
	/*
	 * make space for the port as a string: sign, 10 digits, NUL. We keep it on the stack
	 * till we can later copy it to the right context. By having the declaration here
	 * already we can add a pointer to the runtimeValues.
	 */
	char nodePortString[12] = "";

	/*
	 * This function has three sections:
	 *   - Initialize the keywords and values (to be copied later) of global parameters
	 *   - Append user/host-specific parameters calculated from the given key
	 *   - (Enterprise-only) append user/host-specific authentication params
	 *
	 * The global parameters have already been assigned from a GUC, so begin by
	 * calculating the key-specific parameters (basically just the fields of
	 * the key and the active database encoding).
	 *
	 * We allocate everything in the provided context so as to facilitate using
	 * pfree on all runtime parameters when connections using these entries are
	 * invalidated during config reloads.
	 */
	const char *runtimeKeywords[] = {
		"host",
		"port",
		"dbname",
		"user",
		"client_encoding"
	};
	const char *runtimeValues[] = {
		key->hostname,
		nodePortString,
		key->database,
		key->user,
		FUNC0()
	};

	/*
	 * Declare local params for readability;
	 *
	 * assignment is done directly to not loose the pointers if any of the later
	 * allocations cause an error. FreeConnParamsHashEntryFields knows about the
	 * possibility of half initialized keywords or values and correctly reclaims them when
	 * the cache is reused.
	 *
	 * Need to zero enough space for all possible libpq parameters.
	 */
	char **connKeywords = *keywords = FUNC1(context, ConnParams.maxSize *
															 sizeof(char *));
	char **connValues = *values = FUNC1(context, ConnParams.maxSize *
														 sizeof(char *));

	/* auth keywords will begin after global and runtime ones are appended */
	Index authParamsIdx = ConnParams.size + FUNC6(runtimeKeywords);

	Index paramIndex = 0;
	Index runtimeParamIndex = 0;

	if (ConnParams.size + FUNC6(runtimeKeywords) >= ConnParams.maxSize)
	{
		/* hopefully this error is only seen by developers */
		FUNC3(ERROR, (FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
						FUNC5("too many connParams entries")));
	}

	FUNC7(key->port, nodePortString); /* populate node port string with port */

	/* first step: copy global parameters to beginning of array */
	for (paramIndex = 0; paramIndex < ConnParams.size; paramIndex++)
	{
		/* copy the keyword&value pointers to the new array */
		connKeywords[paramIndex] = ConnParams.keywords[paramIndex];
		connValues[paramIndex] = ConnParams.values[paramIndex];
	}

	/*
	 * remember where global/GUC params end and runtime ones start, all entries after this
	 * point should be allocated in context and will be freed upon
	 * FreeConnParamsHashEntryFields
	 */
	*runtimeParamStart = ConnParams.size;

	/* second step: begin after global params and copy runtime params into our context */
	for (runtimeParamIndex = 0;
		 runtimeParamIndex < FUNC6(runtimeKeywords);
		 runtimeParamIndex++)
	{
		/* copy the keyword & value into our context and append to the new array */
		connKeywords[ConnParams.size + runtimeParamIndex] =
			FUNC2(context, runtimeKeywords[runtimeParamIndex]);
		connValues[ConnParams.size + runtimeParamIndex] =
			FUNC2(context, runtimeValues[runtimeParamIndex]);
	}

	/* final step: add terminal NULL, required by libpq */
	connKeywords[authParamsIdx] = connValues[authParamsIdx] = NULL;
}