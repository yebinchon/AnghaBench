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
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  dsm_segment ;
typedef  void* dsm_handle ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_3__ {int /*<<< orphan*/  setResult; int /*<<< orphan*/  setDesc; } ;
typedef  TYPE_1__ ReturnSetInfo ;
typedef  int /*<<< orphan*/  ProgressMonitorData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TTSOpsMinimalTuple ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pg_stat_get_progress_info ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int const,int*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

List *
FUNC12(uint64 commandTypeMagicNumber, List **attachedDSMSegments)
{
	/*
	 * The expected magic number should reside in the first progress field and the
	 * actual segment handle in the second but the slot ordering is 1-indexed in the
	 * tuple table slot and there are 3 other fields before the progress fields in the
	 * pg_stat_get_progress_info output.
	 */
	const int magicNumberIndex = 0 + 1 + 3;
	const int dsmHandleIndex = 1 + 1 + 3;

	/*
	 * Currently, Postgres' progress logging mechanism supports only the VACUUM
	 * operations. Therefore, we identify ourselves as a VACUUM command but only fill
	 * a couple of the available fields. Therefore the commands that use Citus' progress
	 * monitoring API will appear in pg_stat_progress_vacuum output.
	 */
	text *commandTypeText = FUNC8("VACUUM");
	Datum commandTypeDatum = FUNC7(commandTypeText);
	Oid getProgressInfoFunctionOid = InvalidOid;
	TupleTableSlot *tupleTableSlot = NULL;
	ReturnSetInfo *progressResultSet = NULL;
	List *monitorList = NIL;

	getProgressInfoFunctionOid = FUNC4("pg_catalog",
											 "pg_stat_get_progress_info",
											 1);

	progressResultSet = FUNC3(pg_stat_get_progress_info,
												   getProgressInfoFunctionOid,
												   commandTypeDatum);

	tupleTableSlot = FUNC5(progressResultSet->setDesc,
													&TTSOpsMinimalTuple);

	/* iterate over tuples in tuple store, and send them to destination */
	for (;;)
	{
		bool nextTuple = false;
		bool isNull = false;
		Datum magicNumberDatum = 0;
		uint64 magicNumber = 0;

		nextTuple = FUNC11(progressResultSet->setResult,
											true,
											false,
											tupleTableSlot);

		if (!nextTuple)
		{
			break;
		}

		magicNumberDatum = FUNC10(tupleTableSlot, magicNumberIndex, &isNull);
		magicNumber = FUNC0(magicNumberDatum);

		if (!isNull && magicNumber == commandTypeMagicNumber)
		{
			Datum dsmHandleDatum = FUNC10(tupleTableSlot, dsmHandleIndex, &isNull);
			dsm_handle dsmHandle = FUNC0(dsmHandleDatum);
			dsm_segment *attachedSegment = NULL;
			ProgressMonitorData *monitor = FUNC6(dsmHandle,
																	&attachedSegment);

			if (monitor != NULL)
			{
				*attachedDSMSegments = FUNC9(*attachedDSMSegments, attachedSegment);
				monitorList = FUNC9(monitorList, monitor);
			}
		}

		FUNC1(tupleTableSlot);
	}

	FUNC2(tupleTableSlot);

	return monitorList;
}