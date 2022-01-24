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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  file_id ;
struct TYPE_2__ {int /*<<< orphan*/  log_level; } ;
typedef  int /*<<< orphan*/  ConnectionInfo ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int /*<<< orphan*/  FDFS_DOWNLOAD_TO_FILE ; 
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
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,char**,int /*<<< orphan*/ *,scalar_t__*) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 () ; 

int FUNC12(int argc, char *argv[])
{
	char *conf_filename;
	char *local_filename;
	ConnectionInfo *pTrackerServer;
	int result;
	char file_id[128];
	int64_t file_size;
	int64_t file_offset;
	int64_t download_bytes;
	
	if (argc < 3)
	{
		FUNC5("Usage: %s <config_file> <file_id> " \
			"[local_filename] [<download_offset> " \
			"<download_bytes>]\n", argv[0]);
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

	pTrackerServer = FUNC11();
	if (pTrackerServer == NULL)
	{
		FUNC1();
		return errno != 0 ? errno : ECONNREFUSED;
	}

	FUNC6(file_id, sizeof(file_id), "%s", argv[2]);

	file_offset = 0;
	download_bytes = 0;
	if (argc >= 4)
	{
		local_filename = argv[3];
		if (argc >= 6)
		{
			file_offset = FUNC9(argv[4], NULL, 10);
			download_bytes = FUNC9(argv[5], NULL, 10);
		}
	}
	else
	{
		local_filename = FUNC8(file_id, '/');
		if (local_filename != NULL)
		{
			local_filename++;  //skip /
		}
		else
		{
			local_filename = file_id;
		}
	}

	result = FUNC7(pTrackerServer, \
                NULL, FDFS_DOWNLOAD_TO_FILE, file_id, \
                file_offset, download_bytes, \
                &local_filename, NULL, &file_size);
	if (result != 0)
	{
		FUNC5("download file fail, " \
			"error no: %d, error info: %s\n", \
			result, FUNC0(result));
	}

	FUNC10(pTrackerServer, true);
	FUNC1();

	return 0;
}