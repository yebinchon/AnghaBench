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
typedef  int /*<<< orphan*/  file_id ;
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
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 () ; 

int FUNC10(int argc, char *argv[])
{
	char *conf_filename;
	ConnectionInfo *pTrackerServer;
	int result;
	char file_id[128];
	
	if (argc < 3)
	{
		FUNC5("Usage: %s <config_file> <file_id>\n", argv[0]);
		return 1;
	}

	FUNC4();
	g_log_context.log_level = LOG_ERR;
	FUNC3();

	conf_filename = argv[1];
	if ((result=FUNC2(conf_filename)) != 0)
	{
		return result;
	}

	pTrackerServer = FUNC9();
	if (pTrackerServer == NULL)
	{
		FUNC1();
		return errno != 0 ? errno : ECONNREFUSED;
	}

	FUNC6(file_id, sizeof(file_id), "%s", argv[2]);
	if ((result=FUNC7(pTrackerServer, NULL, file_id)) != 0)
	{
		FUNC5("delete file fail, " \
			"error no: %d, error info: %s\n", \
			result, FUNC0(result));
	}

	FUNC8(pTrackerServer, true);
	FUNC1();

	return result;
}