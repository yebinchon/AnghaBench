#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  appender_file_id ;
struct TYPE_2__ {int /*<<< orphan*/  log_level; } ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int /*<<< orphan*/  LOG_ERR ; 
 char* FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*) ; 
 TYPE_1__ g_log_context ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 () ; 

int FUNC9(int argc, char *argv[])
{
	char *conf_filename;
	char *local_filename;
	ConnectionInfo *pTrackerServer;
	int result;
	char appender_file_id[128];
	
	if (argc < 4)
	{
		FUNC4("Usage: %s <config_file> <appender_file_id> " \
			"<local_filename>\n", argv[0]);
		return 1;
	}

	FUNC3();
	g_log_context.log_level = LOG_ERR;

	conf_filename = argv[1];
	if ((result=FUNC2(conf_filename)) != 0)
	{
		return result;
	}

	pTrackerServer = FUNC8();
	if (pTrackerServer == NULL)
	{
		FUNC1();
		return errno != 0 ? errno : ECONNREFUSED;
	}

	FUNC5(appender_file_id, sizeof(appender_file_id), "%s", argv[2]);
	local_filename = argv[3];
	if ((result=FUNC6(pTrackerServer, \
		NULL, local_filename, appender_file_id)) != 0)
	{
		FUNC4("append file fail, " \
			"error no: %d, error info: %s\n", \
			result, FUNC0(result));
		return result;
	}

	FUNC7(pTrackerServer, true);
	FUNC1();

	return result;
}