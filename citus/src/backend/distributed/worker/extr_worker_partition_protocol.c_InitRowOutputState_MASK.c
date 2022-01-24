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
struct TYPE_3__ {char* null_print; char* null_print_client; int file_encoding; int need_transcoding; int /*<<< orphan*/  fe_msgbuf; int /*<<< orphan*/  rowcontext; int /*<<< orphan*/  binary; void* delim; } ;
typedef  int /*<<< orphan*/  CopyOutStateData ;
typedef  TYPE_1__* CopyOutState ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_INITSIZE ; 
 int /*<<< orphan*/  ALLOCSET_DEFAULT_MAXSIZE ; 
 int /*<<< orphan*/  ALLOCSET_DEFAULT_MINSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BinaryWorkerCopyFormat ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 char* FUNC9 (char*,int,int) ; 
 void* FUNC10 (char*) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static CopyOutState
FUNC12(void)
{
	CopyOutState rowOutputState = (CopyOutState) FUNC6(sizeof(CopyOutStateData));

	int fileEncoding = FUNC8();
	int databaseEncoding = FUNC1();
	int databaseEncodingMaxLength = FUNC7();

	/* initialize defaults for printing null values */
	char *nullPrint = FUNC10("\\N");
	int nullPrintLen = FUNC11(nullPrint);
	char *nullPrintClient = FUNC9(nullPrint, nullPrintLen, fileEncoding);

	/* set default text output characters */
	rowOutputState->null_print = nullPrint;
	rowOutputState->null_print_client = nullPrintClient;
	rowOutputState->delim = FUNC10("\t");

	rowOutputState->binary = BinaryWorkerCopyFormat;

	/* set encoding conversion information */
	rowOutputState->file_encoding = fileEncoding;

	if (FUNC2(fileEncoding))
	{
		FUNC3(ERROR, (FUNC4("cannot repartition into encoding caller cannot "
							   "receive")));
	}

	/* set up transcoding information and default text output characters */
	if ((fileEncoding != databaseEncoding) || (databaseEncodingMaxLength > 1))
	{
		rowOutputState->need_transcoding = true;
	}
	else
	{
		rowOutputState->need_transcoding = false;
	}

	/*
	 * Create a temporary memory context that we can reset once per row to
	 * recover palloc'd memory. This avoids any problems with leaks inside data
	 * type output routines, and should be faster than retail pfree's anyway.
	 */
	rowOutputState->rowcontext = FUNC0(CurrentMemoryContext,
															   "WorkerRowOutputContext",
															   ALLOCSET_DEFAULT_MINSIZE,
															   ALLOCSET_DEFAULT_INITSIZE,
															   ALLOCSET_DEFAULT_MAXSIZE);

	/* allocate the message buffer to use for serializing a row */
	rowOutputState->fe_msgbuf = FUNC5();

	return rowOutputState;
}