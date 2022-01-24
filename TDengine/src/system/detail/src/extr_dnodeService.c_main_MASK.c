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
struct sigaction {int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int LOG_CONS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_LOCAL1 ; 
 int LOG_NDELAY ; 
 int LOG_PID ; 
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 char* buildinfo ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* compatible_version ; 
 char* configDir ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* gitinfo ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 char* version ; 

int FUNC12(int argc, char *argv[]) {
  // Set global configuration file
  for (int i = 1; i < argc; ++i) {
    if (FUNC9(argv[i], "-c") == 0) {
      if (i < argc - 1) {
        FUNC10(configDir, argv[++i]);
      } else {
        FUNC6("'-c' requires a parameter, default:%s\n", configDir);
        FUNC4(EXIT_FAILURE);
      }
    } else if (FUNC9(argv[i], "-V") == 0) {
      FUNC6("version: %s compatible_version: %s\n", version, compatible_version);
      FUNC6("gitinfo: %s\n", gitinfo);
      FUNC6("buildinfo: %s\n", buildinfo);
      return 0;
    } else if (FUNC9(argv[i], "-k") == 0) {
      FUNC3();
    }
  }

  /* Set termination handler. */
  struct sigaction act;
  act.sa_flags = SA_SIGINFO;
  act.sa_sigaction = signal_handler;
  FUNC7(SIGTERM, &act, NULL);
  FUNC7(SIGHUP, &act, NULL);
  FUNC7(SIGINT, &act, NULL);
  FUNC7(SIGUSR1, &act, NULL);
  FUNC7(SIGUSR2, &act, NULL);
  // sigaction(SIGABRT, &act, NULL);

  // Open /var/log/syslog file to record information.
  FUNC5("TDengine:", LOG_PID | LOG_CONS | LOG_NDELAY, LOG_LOCAL1);
  FUNC11(LOG_INFO, "Starting TDengine service...");

  // Initialize the system
  if (FUNC2() < 0) {
    FUNC11(LOG_ERR, "Error initialize TDengine system");
    FUNC0();

    FUNC1();
    FUNC4(EXIT_FAILURE);
  }

  FUNC11(LOG_INFO, "Started TDengine service successfully.");

  while (1) {
    FUNC8(1000);
  }
}