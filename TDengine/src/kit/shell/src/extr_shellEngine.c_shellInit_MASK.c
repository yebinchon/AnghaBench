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
struct arguments {scalar_t__* file; int /*<<< orphan*/ * commands; int /*<<< orphan*/  database; int /*<<< orphan*/ * password; int /*<<< orphan*/ * user; int /*<<< orphan*/  host; scalar_t__ is_use_passwd; int /*<<< orphan*/ * timezone; } ;
typedef  int /*<<< orphan*/  TAOS ;

/* Variables and functions */
 char* CLIENT_VERSION ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 char* PROMPT_HEADER ; 
 char* SERVER_VERSION ; 
 int /*<<< orphan*/  TSDB_OPTION_TIMEZONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tsDefaultPass ; 
 int /*<<< orphan*/ * tsDefaultUser ; 
 int tsMeterMetaKeepTimer ; 
 int tsMetricMetaKeepTimer ; 
 int /*<<< orphan*/  tsMgmtShellPort ; 
 int /*<<< orphan*/  FUNC14 () ; 

TAOS *FUNC15(struct arguments *args) {
  FUNC3("\n");
  FUNC3(CLIENT_VERSION, FUNC10());
  FUNC1(stdout);

  // set options before initializing
  if (args->timezone != NULL) {
    FUNC13(TSDB_OPTION_TIMEZONE, args->timezone);
  }

  if (args->is_use_passwd) {
    if (args->password == NULL) args->password = FUNC2("Enter password: ");
  } else {
    args->password = tsDefaultPass;
  }

  if (args->user == NULL) {
    args->user = tsDefaultUser;
  }

  FUNC12();
  /*
   * set tsMetricMetaKeepTimer = 3000ms
   * set tsMeterMetaKeepTimer = 3000ms
   * means not save cache in shell
   */
  tsMetricMetaKeepTimer = 3;
  tsMeterMetaKeepTimer = 3000;

  // Connect to the database.
  TAOS *con = FUNC9(args->host, args->user, args->password, args->database, tsMgmtShellPort);
  if (con == NULL) {
    return con;
  }

  /* Read history TODO : release resources here*/
  FUNC4();

  // Check if it is temperory run
  if (args->commands != NULL || args->file[0] != 0) {
    if (args->commands != NULL) {
      char *token;
      token = FUNC7(args->commands, ";");
      while (token != NULL) {
        FUNC3("%s%s\n", PROMPT_HEADER, token);
        FUNC5(con, token);
        token = FUNC7(NULL, ";");
      }
    }

    if (args->file[0] != 0) {
      FUNC6(con, args->file);
    }
    FUNC8(con);

    FUNC14();
    FUNC0(EXIT_SUCCESS);
  }

  FUNC3(SERVER_VERSION, FUNC11(con));

  return con;
}