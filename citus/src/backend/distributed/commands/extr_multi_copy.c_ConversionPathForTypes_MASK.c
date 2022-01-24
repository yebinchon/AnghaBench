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
struct TYPE_3__ {int coercionType; int /*<<< orphan*/  coerceFunction; int /*<<< orphan*/  inputFunction; int /*<<< orphan*/  typioparam; int /*<<< orphan*/  outputFunction; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ CopyCoercionData ;
typedef  int CoercionPathType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COERCION_EXPLICIT ; 
#define  COERCION_PATH_ARRAYCOERCE 132 
#define  COERCION_PATH_COERCEVIAIO 131 
#define  COERCION_PATH_FUNC 130 
#define  COERCION_PATH_NONE 129 
#define  COERCION_PATH_RELABELTYPE 128 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__*,int*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

void
FUNC8(Oid inputType, Oid destType, CopyCoercionData *result)
{
	Oid coercionFuncId = InvalidOid;
	CoercionPathType coercionType = COERCION_PATH_RELABELTYPE;

	if (destType == inputType)
	{
		result->coercionType = COERCION_PATH_RELABELTYPE;
		return;
	}

	coercionType = FUNC3(destType, inputType,
										 COERCION_EXPLICIT,
										 &coercionFuncId);

	switch (coercionType)
	{
		case COERCION_PATH_NONE:
		{
			FUNC1(ERROR, (FUNC2("cannot cast %d to %d", inputType, destType)));
			return;
		}

		case COERCION_PATH_ARRAYCOERCE:
		{
			Oid inputBaseType = FUNC7(inputType);
			Oid destBaseType = FUNC7(destType);
			CoercionPathType baseCoercionType = COERCION_PATH_NONE;

			if (inputBaseType != InvalidOid && destBaseType != InvalidOid)
			{
				baseCoercionType = FUNC3(inputBaseType, destBaseType,
														 COERCION_EXPLICIT,
														 &coercionFuncId);
			}

			if (baseCoercionType != COERCION_PATH_COERCEVIAIO)
			{
				FUNC1(ERROR, (FUNC2("can not run query which uses an implicit coercion"
									   " between array types")));
			}
		}

		/* fallthrough */

		case COERCION_PATH_COERCEVIAIO:
		{
			result->coercionType = COERCION_PATH_COERCEVIAIO;

			{
				bool typisvarlena = false; /* ignored */
				Oid iofunc = InvalidOid;
				FUNC6(inputType, &iofunc, &typisvarlena);
				FUNC4(iofunc, &(result->outputFunction));
			}

			{
				Oid iofunc = InvalidOid;
				FUNC5(destType, &iofunc, &(result->typioparam));
				FUNC4(iofunc, &(result->inputFunction));
			}

			return;
		}

		case COERCION_PATH_FUNC:
		{
			result->coercionType = COERCION_PATH_FUNC;
			FUNC4(coercionFuncId, &(result->coerceFunction));
			return;
		}

		case COERCION_PATH_RELABELTYPE:
		{
			result->coercionType = COERCION_PATH_RELABELTYPE;
			return; /* the types are binary compatible, no need to call a function */
		}

		default:
			FUNC0(false); /* there are no other options for this enum */
	}
}