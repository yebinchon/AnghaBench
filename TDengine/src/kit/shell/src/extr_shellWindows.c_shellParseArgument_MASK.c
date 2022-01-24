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
struct arguments {char* host; int is_use_passwd; char* user; char* commands; int is_raw_time; char* database; char* timezone; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  configDir ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tsMgmtShellPort ; 

void FUNC6(int argc, char *argv[], struct arguments *arguments) {
  for (int i = 1; i < argc; i++) {
    // for host
    if (FUNC4(argv[i], "-h") == 0) {
      if (i < argc - 1) {
        arguments->host = argv[++i];
      } else {
        FUNC2(stderr, "option -h requires an argument\n");
        FUNC1(EXIT_FAILURE);
      }
    }
    // for password
    else if (FUNC4(argv[i], "-p") == 0) {
      arguments->is_use_passwd = true;
    }
    // for management port
    else if (FUNC4(argv[i], "-P") == 0) {
      if (i < argc - 1) {
        tsMgmtShellPort = FUNC0(argv[++i]);
      } else {
        FUNC2(stderr, "option -P requires an argument\n");
        FUNC1(EXIT_FAILURE);
      }
    }
    // for user
    else if (FUNC4(argv[i], "-u") == 0) {
      if (i < argc - 1) {
        arguments->user = argv[++i];
      } else {
        FUNC2(stderr, "option -u requires an argument\n");
        FUNC1(EXIT_FAILURE);
      }
    } else if (FUNC4(argv[i], "-c") == 0) {
      if (i < argc - 1) {
        FUNC5(configDir, argv[++i]);
      } else {
        FUNC2(stderr, "Option -c requires an argument\n");
        FUNC1(EXIT_FAILURE);
      }
    } else if (FUNC4(argv[i], "-s") == 0) {
      if (i < argc - 1) {
        arguments->commands = argv[++i];
      } else {
        FUNC2(stderr, "option -s requires an argument\n");
        FUNC1(EXIT_FAILURE);
      }
    } else if (FUNC4(argv[i], "-r") == 0) {
      arguments->is_raw_time = true;
    }
    // For temperory batch commands to run TODO
    else if (FUNC4(argv[i], "-f") == 0) {
      if (i < argc - 1) {
        FUNC5(arguments->file, argv[++i]);
      } else {
        FUNC2(stderr, "option -f requires an argument\n");
        FUNC1(EXIT_FAILURE);
      }
    }
    // for default database
    else if (FUNC4(argv[i], "-d") == 0) {
      if (i < argc - 1) {
        arguments->database = argv[++i];
      } else {
        FUNC2(stderr, "option -d requires an argument\n");
        FUNC1(EXIT_FAILURE);
      }
    }
    // For time zone
    else if (FUNC4(argv[i], "-t") == 0) {
      if (i < argc - 1) {
        arguments->timezone = argv[++i];
      } else {
        FUNC2(stderr, "option -t requires an argument\n");
        FUNC1(EXIT_FAILURE);
      }
    }
    // For temperory command TODO
    else if (FUNC4(argv[i], "--help") == 0) {
      FUNC3();
      FUNC1(EXIT_FAILURE);
    } else {
      FUNC2(stderr, "wrong options\n");
      FUNC3();
      FUNC1(EXIT_FAILURE);
    }
  }
}