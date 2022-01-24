#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  scalar_t__ int32 ;
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  scalar_t__ ResultStatus ;
typedef  scalar_t__ QueryStatus ;
typedef  scalar_t__ CopyStatus ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int const,int const) ; 
 scalar_t__ CLIENT_COPY_DONE ; 
 scalar_t__ CLIENT_COPY_MORE ; 
 scalar_t__ CLIENT_INVALID_QUERY ; 
 scalar_t__ CLIENT_QUERY_COPY ; 
 scalar_t__ CLIENT_RESULT_BUSY ; 
 scalar_t__ CLIENT_RESULT_READY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  DEBUG2 ; 
 scalar_t__ INVALID_CONNECTION_ID ; 
 int MAXPGPATH ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__,char*) ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,scalar_t__) ; 
 long RemoteTaskCheckInterval ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  WARNING ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (long) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*) ; 

__attribute__((used)) static bool
FUNC16(const char *nodeName, uint32 nodePort, const char *nodeUser,
				   StringInfo transmitCommand, StringInfo filePath)
{
	int32 fileDescriptor = -1;
	char filename[MAXPGPATH];
	int closed = -1;
	const int fileFlags = (O_APPEND | O_CREAT | O_RDWR | O_TRUNC | PG_BINARY);
	const int fileMode = (S_IRUSR | S_IWUSR);

	QueryStatus queryStatus = CLIENT_INVALID_QUERY;
	int32 connectionId = INVALID_CONNECTION_ID;
	char *nodeDatabase = NULL;
	bool querySent = false;
	bool queryReady = false;
	bool copyDone = false;

	/* create local file to append remote data to */
	FUNC15(filename, MAXPGPATH, "%s", filePath->data);

	fileDescriptor = FUNC0(filename, fileFlags, fileMode);
	if (fileDescriptor < 0)
	{
		FUNC11(WARNING, (FUNC12(),
						  FUNC13("could not open file \"%s\": %m", filePath->data)));

		return false;
	}

	/* we use the same database name on the master and worker nodes */
	nodeDatabase = FUNC2();

	/* connect to remote node */
	connectionId = FUNC3(nodeName, nodePort, nodeDatabase, nodeUser);
	if (connectionId == INVALID_CONNECTION_ID)
	{
		FUNC9(connectionId, filename, fileDescriptor);

		return false;
	}

	/* send request to remote node to start transmitting data */
	querySent = FUNC8(connectionId, transmitCommand->data);
	if (!querySent)
	{
		FUNC9(connectionId, filename, fileDescriptor);

		return false;
	}

	/* loop until the remote node acknowledges our transmit request */
	while (!queryReady)
	{
		ResultStatus resultStatus = FUNC7(connectionId);
		if (resultStatus == CLIENT_RESULT_READY)
		{
			queryReady = true;
		}
		else if (resultStatus == CLIENT_RESULT_BUSY)
		{
			/* remote node did not respond; wait for longer */
			long sleepIntervalPerCycle = RemoteTaskCheckInterval * 1000L;
			FUNC14(sleepIntervalPerCycle);
		}
		else
		{
			FUNC9(connectionId, filename, fileDescriptor);

			return false;
		}
	}

	/* check query response is as expected */
	queryStatus = FUNC6(connectionId);
	if (queryStatus != CLIENT_QUERY_COPY)
	{
		FUNC9(connectionId, filename, fileDescriptor);

		return false;
	}

	/* loop until we receive and append all the data from remote node */
	while (!copyDone)
	{
		CopyStatus copyStatus = FUNC4(connectionId, fileDescriptor, NULL);
		if (copyStatus == CLIENT_COPY_DONE)
		{
			copyDone = true;
		}
		else if (copyStatus == CLIENT_COPY_MORE)
		{
			/* remote node will continue to send more data */
		}
		else
		{
			FUNC9(connectionId, filename, fileDescriptor);

			return false;
		}
	}

	/* we are done executing; release the connection and the file handle */
	FUNC5(connectionId);

	closed = FUNC10(fileDescriptor);
	if (closed < 0)
	{
		FUNC11(WARNING, (FUNC12(),
						  FUNC13("could not close file \"%s\": %m", filename)));

		/* if we failed to close file, try to delete it before erroring out */
		FUNC1(filename);

		return false;
	}

	/* we successfully received the remote file */
	FUNC11(DEBUG2, (FUNC13("received remote file \"%s\"", filename)));

	return true;
}