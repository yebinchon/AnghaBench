#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
typedef  size_t int32 ;
struct TYPE_7__ {int /*<<< orphan*/  pgConn; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ MultiConnection ;
typedef  scalar_t__ ExecStatusType ;
typedef  int /*<<< orphan*/  CopyStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CLIENT_COPY_DONE ; 
 int /*<<< orphan*/  CLIENT_COPY_FAILED ; 
 int /*<<< orphan*/  CLIENT_COPY_MORE ; 
 int /*<<< orphan*/  CLIENT_INVALID_COPY ; 
 TYPE_1__** ClientConnectionArray ; 
 scalar_t__ ENOSPC ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int) ; 
 size_t INVALID_CONNECTION_ID ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char**,int const) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ errno ; 
 int FUNC13 (size_t,char*,int) ; 

CopyStatus
FUNC14(int32 connectionId, int32 fileDescriptor, uint64 *returnBytesReceived)
{
	MultiConnection *connection = NULL;
	char *receiveBuffer = NULL;
	int consumed = 0;
	int receiveLength = 0;
	const int asynchronous = 1;
	CopyStatus copyStatus = CLIENT_INVALID_COPY;

	FUNC0(connectionId != INVALID_CONNECTION_ID);
	connection = ClientConnectionArray[connectionId];
	FUNC0(connection != NULL);

	/*
	 * Consume input to handle the case where previous copy operation might have
	 * received zero bytes.
	 */
	consumed = FUNC4(connection->pgConn);
	if (consumed == 0)
	{
		FUNC10(WARNING, (FUNC12("could not read data from worker node")));
		return CLIENT_COPY_FAILED;
	}

	/* receive copy data message in an asynchronous manner */
	receiveLength = FUNC6(connection->pgConn, &receiveBuffer, asynchronous);
	while (receiveLength > 0)
	{
		/* received copy data; append these data to file */
		int appended = -1;
		errno = 0;

		if (returnBytesReceived)
		{
			*returnBytesReceived += receiveLength;
		}

		appended = FUNC13(fileDescriptor, receiveBuffer, receiveLength);
		if (appended != receiveLength)
		{
			/* if write didn't set errno, assume problem is no disk space */
			if (errno == 0)
			{
				errno = ENOSPC;
			}
			FUNC10(FATAL, (FUNC11(),
							FUNC12("could not append to copied file: %m")));
		}

		FUNC5(receiveBuffer);

		receiveLength = FUNC6(connection->pgConn, &receiveBuffer, asynchronous);
	}

	/* we now check the last received length returned by copy data */
	if (receiveLength == 0)
	{
		/* we cannot read more data without blocking */
		copyStatus = CLIENT_COPY_MORE;
	}
	else if (receiveLength == -1)
	{
		/* received copy done message */
		bool raiseInterrupts = true;
		PGresult *result = FUNC2(connection, raiseInterrupts);
		ExecStatusType resultStatus = FUNC7(result);

		if (resultStatus == PGRES_COMMAND_OK)
		{
			copyStatus = CLIENT_COPY_DONE;
		}
		else
		{
			copyStatus = CLIENT_COPY_FAILED;

			FUNC9(connection, result, WARNING);
		}

		FUNC3(result);
	}
	else if (receiveLength == -2)
	{
		/* received an error */
		copyStatus = CLIENT_COPY_FAILED;

		FUNC8(connection, WARNING);
	}

	/* if copy out completed, make sure we drain all results from libpq */
	if (receiveLength < 0)
	{
		FUNC1(connection);
	}

	return copyStatus;
}