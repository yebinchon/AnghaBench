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
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  ERRCODE_CONNECTION_FAILURE ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERRCODE_QUERY_CANCELED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int const) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static bool
FUNC9(StringInfo copyData)
{
	int messageType = 0;
	int messageCopied = 0;
	bool copyDone = true;
	const int unlimitedSize = 0;

	FUNC0();
	FUNC8();
	messageType = FUNC5();
	if (messageType == EOF)
	{
		FUNC2(ERROR, (FUNC3(ERRCODE_CONNECTION_FAILURE),
						FUNC4("unexpected EOF on client connection")));
	}

	/* consume the rest of message before checking for message type */
	messageCopied = FUNC6(copyData, unlimitedSize);
	if (messageCopied == EOF)
	{
		FUNC2(ERROR, (FUNC3(ERRCODE_CONNECTION_FAILURE),
						FUNC4("unexpected EOF on client connection")));
	}

	FUNC1();

	switch (messageType)
	{
		case 'd':       /* CopyData */
		{
			copyDone = false;
			break;
		}

		case 'c':       /* CopyDone */
		{
			copyDone = true;
			break;
		}

		case 'f':       /* CopyFail */
		{
			FUNC2(ERROR, (FUNC3(ERRCODE_QUERY_CANCELED),
							FUNC4("COPY data failed: %s", FUNC7(copyData))));
			break;
		}

		case 'H':       /* Flush */
		case 'S':       /* Sync */
		{
			/*
			 * Ignore Flush/Sync for the convenience of client libraries (such
			 * as libpq) that may send those without noticing that the command
			 * they just sent was COPY.
			 */
			copyDone = false;
			break;
		}

		default:
		{
			FUNC2(ERROR, (FUNC3(ERRCODE_PROTOCOL_VIOLATION),
							FUNC4("unexpected message type 0x%02X during COPY data",
								   messageType)));
			break;
		}
	}

	return copyDone;
}