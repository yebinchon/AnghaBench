#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ATTEMPT_FILE_SUFFIX ; 
 char* FUNC0 () ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MIN_TASK_FILENAME_WIDTH ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,char*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  TRANSMIT_WITH_USER_COMMAND ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char const*,...) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(const char *nodeName, uint32 nodePort,
							StringInfo remoteFilename, StringInfo localFilename)
{
	char *nodeUser = NULL;
	StringInfo attemptFilename = NULL;
	StringInfo transmitCommand = NULL;
	char *userName = FUNC1();
	uint32 randomId = (uint32) FUNC9();
	bool received = false;
	int renamed = 0;

	/*
	 * We create an attempt file to signal that the file is still in transit. We
	 * further append a random id to the filename to handle the unexpected case
	 * of another process concurrently fetching the same file.
	 */
	attemptFilename = FUNC7();
	FUNC3(attemptFilename, "%s_%0*u%s", localFilename->data,
					 MIN_TASK_FILENAME_WIDTH, randomId, ATTEMPT_FILE_SUFFIX);

	transmitCommand = FUNC7();
	FUNC3(transmitCommand, TRANSMIT_WITH_USER_COMMAND, remoteFilename->data,
					 FUNC8(userName));

	/* connect as superuser to give file access */
	nodeUser = FUNC0();

	received = FUNC2(nodeName, nodePort, nodeUser, transmitCommand,
								  attemptFilename);
	if (!received)
	{
		FUNC4(ERROR, (FUNC6("could not receive file \"%s\" from %s:%u",
							   remoteFilename->data, nodeName, nodePort)));
	}

	/* atomically rename the attempt file */
	renamed = FUNC10(attemptFilename->data, localFilename->data);
	if (renamed != 0)
	{
		FUNC4(ERROR, (FUNC5(),
						FUNC6("could not rename file \"%s\" to \"%s\": %m",
							   attemptFilename->data, localFilename->data)));
	}
}