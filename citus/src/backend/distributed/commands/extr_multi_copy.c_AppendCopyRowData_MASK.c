#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
typedef  int /*<<< orphan*/  bytea ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_17__ {char* null_print_client; char* delim; scalar_t__ binary; int /*<<< orphan*/  rowcontext; } ;
struct TYPE_16__ {scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_15__ {int /*<<< orphan*/  natts; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__* CopyOutState ;
typedef  int /*<<< orphan*/  CopyCoercionData ;

/* Variables and functions */
 scalar_t__ ATTRIBUTE_GENERATED_STORED ; 
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int VARHDRSZ ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

void
FUNC14(Datum *valueArray, bool *isNullArray, TupleDesc rowDescriptor,
				  CopyOutState rowOutputState, FmgrInfo *columnOutputFunctions,
				  CopyCoercionData *columnCoercionPaths)
{
	uint32 totalColumnCount = (uint32) rowDescriptor->natts;
	uint32 availableColumnCount = FUNC0(rowDescriptor);
	uint32 appendedColumnCount = 0;
	uint32 columnIndex = 0;

	MemoryContext oldContext = FUNC8(rowOutputState->rowcontext);

	if (rowOutputState->binary)
	{
		FUNC5(rowOutputState, availableColumnCount);
	}
	for (columnIndex = 0; columnIndex < totalColumnCount; columnIndex++)
	{
		Form_pg_attribute currentColumn = FUNC11(rowDescriptor, columnIndex);
		Datum value = valueArray[columnIndex];
		bool isNull = isNullArray[columnIndex];
		bool lastColumn = false;

		if (!isNull && columnCoercionPaths != NULL)
		{
			value = FUNC1(value, &columnCoercionPaths[columnIndex]);
		}

		if (currentColumn->attisdropped
#if PG_VERSION_NUM >= 120000
			|| currentColumn->attgenerated == ATTRIBUTE_GENERATED_STORED
#endif
			)
		{
			continue;
		}
		else if (rowOutputState->binary)
		{
			if (!isNull)
			{
				FmgrInfo *outputFunctionPointer = &columnOutputFunctions[columnIndex];
				bytea *outputBytes = FUNC10(outputFunctionPointer, value);

				FUNC6(rowOutputState, FUNC13(outputBytes) - VARHDRSZ);
				FUNC4(rowOutputState, FUNC12(outputBytes),
							 FUNC13(outputBytes) - VARHDRSZ);
			}
			else
			{
				FUNC6(rowOutputState, -1);
			}
		}
		else
		{
			if (!isNull)
			{
				FmgrInfo *outputFunctionPointer = &columnOutputFunctions[columnIndex];
				char *columnText = FUNC9(outputFunctionPointer, value);

				FUNC2(rowOutputState, columnText);
			}
			else
			{
				FUNC7(rowOutputState, rowOutputState->null_print_client);
			}

			lastColumn = ((appendedColumnCount + 1) == availableColumnCount);
			if (!lastColumn)
			{
				FUNC3(rowOutputState, rowOutputState->delim[0]);
			}
		}

		appendedColumnCount++;
	}

	if (!rowOutputState->binary)
	{
		/* append default line termination string depending on the platform */
#ifndef WIN32
		FUNC3(rowOutputState, '\n');
#else
		CopySendString(rowOutputState, "\r\n");
#endif
	}

	FUNC8(oldContext);
}