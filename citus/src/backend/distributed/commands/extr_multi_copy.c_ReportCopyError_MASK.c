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
struct TYPE_3__ {int /*<<< orphan*/  port; int /*<<< orphan*/  hostname; int /*<<< orphan*/  pgConn; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERRCODE_IO_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  PG_DIAG_MESSAGE_DETAIL ; 
 int /*<<< orphan*/  PG_DIAG_MESSAGE_PRIMARY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(MultiConnection *connection, PGresult *result)
{
	char *remoteMessage = FUNC2(result, PG_DIAG_MESSAGE_PRIMARY);

	if (remoteMessage != NULL)
	{
		/* probably a constraint violation, show remote message and detail */
		char *remoteDetail = FUNC2(result, PG_DIAG_MESSAGE_DETAIL);
		bool haveDetail = remoteDetail != NULL;

		FUNC3(ERROR, (FUNC6("%s", remoteMessage),
						haveDetail ? FUNC5("%s", FUNC0(remoteDetail)) :
						0));
	}
	else
	{
		/* trim the trailing characters */
		remoteMessage = FUNC7(FUNC1(connection->pgConn));

		FUNC3(ERROR, (FUNC4(ERRCODE_IO_ERROR),
						FUNC6("failed to complete COPY on %s:%d", connection->hostname,
							   connection->port),
						FUNC5("%s", FUNC0(remoteMessage))));
	}
}