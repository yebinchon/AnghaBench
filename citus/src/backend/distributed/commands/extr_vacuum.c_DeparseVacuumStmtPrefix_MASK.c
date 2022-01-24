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
struct TYPE_9__ {int options; scalar_t__ truncate; scalar_t__ index_cleanup; } ;
struct TYPE_8__ {char* data; int len; } ;
typedef  TYPE_1__* StringInfo ;
typedef  TYPE_2__ CitusVacuumParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VACOPT_ANALYZE ; 
 int VACOPT_DISABLE_PAGE_SKIPPING ; 
 int VACOPT_FREEZE ; 
 int VACOPT_FULL ; 
 int VACOPT_SKIP_LOCKED ; 
 scalar_t__ VACOPT_TERNARY_DEFAULT ; 
 scalar_t__ VACOPT_TERNARY_ENABLED ; 
 int VACOPT_VACUUM ; 
 int VACOPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC3 () ; 

__attribute__((used)) static StringInfo
FUNC4(CitusVacuumParams vacuumParams)
{
	int vacuumFlags = vacuumParams.options;
	StringInfo vacuumPrefix = FUNC3();

	/* determine actual command and block out its bits */
	if (vacuumFlags & VACOPT_VACUUM)
	{
		FUNC2(vacuumPrefix, "VACUUM ");
		vacuumFlags &= ~VACOPT_VACUUM;
	}
	else
	{
		FUNC0((vacuumFlags & VACOPT_ANALYZE) != 0);

		FUNC2(vacuumPrefix, "ANALYZE ");
		vacuumFlags &= ~VACOPT_ANALYZE;

		if (vacuumFlags & VACOPT_VERBOSE)
		{
			FUNC2(vacuumPrefix, "VERBOSE ");
			vacuumFlags &= ~VACOPT_VERBOSE;
		}
	}

	/* if no flags remain, exit early */
	if (vacuumFlags == 0
#if PG_VERSION_NUM >= 120000
		&& vacuumParams.truncate == VACOPT_TERNARY_DEFAULT &&
		vacuumParams.index_cleanup == VACOPT_TERNARY_DEFAULT
#endif
		)
	{
		return vacuumPrefix;
	}

	/* otherwise, handle options */
	FUNC1(vacuumPrefix, '(');

	if (vacuumFlags & VACOPT_ANALYZE)
	{
		FUNC2(vacuumPrefix, "ANALYZE,");
	}

	if (vacuumFlags & VACOPT_DISABLE_PAGE_SKIPPING)
	{
		FUNC2(vacuumPrefix, "DISABLE_PAGE_SKIPPING,");
	}

	if (vacuumFlags & VACOPT_FREEZE)
	{
		FUNC2(vacuumPrefix, "FREEZE,");
	}

	if (vacuumFlags & VACOPT_FULL)
	{
		FUNC2(vacuumPrefix, "FULL,");
	}

	if (vacuumFlags & VACOPT_VERBOSE)
	{
		FUNC2(vacuumPrefix, "VERBOSE,");
	}

#if PG_VERSION_NUM >= 120000
	if (vacuumFlags & VACOPT_SKIP_LOCKED)
	{
		appendStringInfoString(vacuumPrefix, "SKIP_LOCKED,");
	}

	if (vacuumParams.truncate != VACOPT_TERNARY_DEFAULT)
	{
		appendStringInfoString(vacuumPrefix,
							   vacuumParams.truncate == VACOPT_TERNARY_ENABLED ?
							   "TRUNCATE," : "TRUNCATE false,"
							   );
	}

	if (vacuumParams.index_cleanup != VACOPT_TERNARY_DEFAULT)
	{
		appendStringInfoString(vacuumPrefix,
							   vacuumParams.index_cleanup == VACOPT_TERNARY_ENABLED ?
							   "INDEX_CLEANUP," : "INDEX_CLEANUP false,"
							   );
	}
#endif

	vacuumPrefix->data[vacuumPrefix->len - 1] = ')';

	FUNC1(vacuumPrefix, ' ');

	return vacuumPrefix;
}