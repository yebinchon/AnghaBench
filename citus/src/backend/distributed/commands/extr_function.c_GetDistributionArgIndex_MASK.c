#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char***,char**) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(Oid functionOid, char *distributionArgumentName,
						Oid *distributionArgumentOid)
{
	int distributionArgumentIndex = -1;

	int numberOfArgs = 0;
	int argIndex = 0;
	Oid *argTypes = NULL;
	char **argNames = NULL;
	char *argModes = NULL;

	HeapTuple proctup = NULL;

	*distributionArgumentOid = InvalidOid;

	proctup = FUNC4(PROCOID, FUNC2(functionOid));
	if (!FUNC1(proctup))
	{
		FUNC6(ERROR, "cache lookup failed for function %u", functionOid);
	}

	numberOfArgs = FUNC11(proctup, &argTypes, &argNames, &argModes);

	if (FUNC5(distributionArgumentName, "$"))
	{
		/* skip the first character, we're safe because text_to_cstring pallocs */
		distributionArgumentName++;

		/* throws error if the input is not an integer */
		distributionArgumentIndex = FUNC13(distributionArgumentName, 4, 0);

		if (distributionArgumentIndex < 1 || distributionArgumentIndex > numberOfArgs)
		{
			char *functionName = FUNC12(functionOid);

			FUNC7(ERROR, (FUNC8(ERRCODE_INVALID_PARAMETER_VALUE),
							FUNC10("cannot distribute the function \"%s\" since "
								   "the distribution argument is not valid",
								   functionName),
							FUNC9("Either provide a valid function argument name "
									"or a valid \"$paramIndex\" to "
									"create_distributed_function()")));
		}

		/*
		 * Internal representation for the distributionArgumentIndex
		 * starts from 0 whereas user facing API starts from 1.
		 */
		distributionArgumentIndex -= 1;
		*distributionArgumentOid = argTypes[distributionArgumentIndex];

		FUNC3(proctup);

		FUNC0(*distributionArgumentOid != InvalidOid);

		return distributionArgumentIndex;
	}

	/*
	 * The user didn't provid "$paramIndex" but potentially the name of the paramater.
	 * So, loop over the arguments and try to find the argument name that matches
	 * the parameter that user provided.
	 */
	for (argIndex = 0; argIndex < numberOfArgs; ++argIndex)
	{
		char *argNameOnIndex = argNames != NULL ? argNames[argIndex] : NULL;

		if (argNameOnIndex != NULL &&
			FUNC14(argNameOnIndex, distributionArgumentName, NAMEDATALEN) == 0)
		{
			distributionArgumentIndex = argIndex;

			*distributionArgumentOid = argTypes[argIndex];

			/* we found, no need to continue */
			break;
		}
	}

	/* we still couldn't find the argument, so error out */
	if (distributionArgumentIndex == -1)
	{
		char *functionName = FUNC12(functionOid);

		FUNC7(ERROR, (FUNC8(ERRCODE_INVALID_PARAMETER_VALUE),
						FUNC10("cannot distribute the function \"%s\" since the "
							   "distribution argument is not valid ", functionName),
						FUNC9("Either provide a valid function argument name "
								"or a valid \"$paramIndex\" to "
								"create_distributed_function()")));
	}

	FUNC3(proctup);

	FUNC0(*distributionArgumentOid != InvalidOid);

	return distributionArgumentIndex;
}