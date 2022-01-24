#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_6__ {int /*<<< orphan*/ * vals; int /*<<< orphan*/  tupdesc; } ;
struct TYPE_5__ {int query_host_port; int /*<<< orphan*/  query_host_name; } ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__ CitusDistStat ;

/* Variables and functions */
 int /*<<< orphan*/ * CurrentMemoryContext ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int SPI_OK_CONNECT ; 
 int SPI_OK_SELECT ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t SPI_processed ; 
 TYPE_3__* SPI_tuptable ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static List *
FUNC10(const char *statQuery, const char *hostname, int port)
{
	List *localNodeCitusDistStatList = NIL;
	int spiConnectionResult = 0;
	int spiQueryResult = 0;
	bool readOnly = true;
	uint32 rowIndex = 0;

	MemoryContext upperContext = CurrentMemoryContext, oldContext = NULL;

	spiConnectionResult = FUNC2();
	if (spiConnectionResult != SPI_OK_CONNECT)
	{
		FUNC7(WARNING, (FUNC8("could not connect to SPI manager to get "
								 "the local stat activity")));

		FUNC5();

		return NIL;
	}

	spiQueryResult = FUNC4(statQuery, readOnly, 0);
	if (spiQueryResult != SPI_OK_SELECT)
	{
		FUNC7(WARNING, (FUNC8("execution was not successful while trying to get "
								 "the local stat activity")));

		FUNC5();

		return NIL;
	}

	/*
	 * SPI_connect switches to its own memory context, which is destroyed by
	 * the call to SPI_finish. SPI_palloc is provided to allocate memory in
	 * the previous ("upper") context, but that is inadequate when we need to
	 * call other functions that themselves use the normal palloc (such as
	 * lappend). So we switch to the upper context ourselves as needed.
	 */
	oldContext = FUNC1(upperContext);

	for (rowIndex = 0; rowIndex < SPI_processed; rowIndex++)
	{
		HeapTuple row = NULL;
		TupleDesc rowDescriptor = SPI_tuptable->tupdesc;
		CitusDistStat *citusDistStat = NULL;

		/* we use pointers from the tuple, so copy it before processing */
		row = FUNC3(SPI_tuptable->vals[rowIndex]);
		citusDistStat = FUNC0(row, rowDescriptor);

		/*
		 * Add the query_host_name and query_host_port which denote where
		 * the query is being running.
		 */
		citusDistStat->query_host_name = FUNC6(hostname);
		citusDistStat->query_host_port = port;

		localNodeCitusDistStatList = FUNC9(localNodeCitusDistStatList, citusDistStat);
	}

	FUNC1(oldContext);

	FUNC5();

	return localNodeCitusDistStatList;
}