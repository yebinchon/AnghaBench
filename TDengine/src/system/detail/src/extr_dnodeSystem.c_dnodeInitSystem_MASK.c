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
struct stat {int dummy; } ;
struct TYPE_2__ {scalar_t__ num; scalar_t__ (* initFp ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int TSDB_MOD_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  dmutex ; 
 int /*<<< orphan*/  dnodeCountRequest ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* logDir ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  monitorCountReqFp ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 
 scalar_t__ FUNC10 (char*,struct stat*) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  tsInternalIp ; 
 TYPE_1__* tsModule ; 
 int /*<<< orphan*/  tsNumOfLogLines ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  tsRebootTime ; 
 int tscEmbedded ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ FUNC20 () ; 

int FUNC21() {
  char        temp[128];
  struct stat dirstat;

  FUNC15();

  tsRebootTime = FUNC13();
  tscEmbedded = 1;

  // Read global configuration.
  FUNC18();

  if (FUNC10(logDir, &dirstat) < 0) FUNC5(logDir, 0755);

  FUNC9(temp, "%s/taosdlog", logDir);
  if (FUNC14(temp, tsNumOfLogLines, 1) < 0) FUNC6("failed to init log file\n");

  if (!FUNC17()) {  // TODO : Change this function
    FUNC16();
    FUNC0("TDengine read global config failed");
    return -1;
  }

  if (FUNC12() != 0) {
    FUNC0("TDengine init tier directory failed");
    return -1;
  }

  FUNC16();
  FUNC1("Server IP address is:%s", tsInternalIp);

  FUNC8(SIGPIPE, SIG_IGN);

  FUNC2();
  FUNC7(&dmutex, NULL);

  FUNC1("starting to initialize TDengine ...");

  FUNC19();
  if (FUNC3() < 0) {
    return -1;
  }
  
  for (int mod = 0; mod < TSDB_MOD_MAX; ++mod) {
    if (tsModule[mod].num != 0 && tsModule[mod].initFp) {
      if ((*tsModule[mod].initFp)() != 0) {
        FUNC0("TDengine initialization failed");
        return -1;
      }
    }
  }

  if (FUNC20() != 0) {
    FUNC0("TDengine vnodes initialization failed");
    return -1;
  }

  monitorCountReqFp = dnodeCountRequest;

  FUNC4();

  FUNC1("TDengine is initialized successfully");

  return 0;
}