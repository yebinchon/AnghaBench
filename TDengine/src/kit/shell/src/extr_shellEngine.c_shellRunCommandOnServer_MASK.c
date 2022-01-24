#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char** we_wordv; } ;
typedef  TYPE_1__ wordexp_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  TAOS ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC5 (char*,char*) ; 
 int FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

void FUNC14(TAOS *con, char command[]) {
  int64_t   st, et;
  wordexp_t full_path;
  char *    sptr = NULL;
  char *    cptr = NULL;
  char *    fname = NULL;
  bool      printMode = false;

  if ((sptr = FUNC5(command, ">>")) != NULL) {
    cptr = FUNC5(command, ";");
    if (cptr != NULL) {
      *cptr = '\0';
    }

    if (FUNC12(sptr + 2, &full_path, 0) != 0) {
      FUNC1(stderr, "ERROR: invalid filename: %s\n", sptr + 2);
      return;
    }
    *sptr = '\0';
    fname = full_path.we_wordv[0];
  }

  if ((sptr = FUNC5(command, "\\G")) != NULL) {
    cptr = FUNC5(command, ";");
    if (cptr != NULL) {
      *cptr = '\0';
    }

    *sptr = '\0';
    printMode = true;  // When output to a file, the switch does not work.
  }

  st = FUNC6();

  if (FUNC11(con, command)) {
    FUNC8(con);
    return;
  }

  if (FUNC3(command, "^\\s*use\\s+[a-zA-Z0-9]+\\s*;\\s*$", REG_EXTENDED | REG_ICASE)) {
    FUNC1(stdout, "Database changed.\n\n");
    FUNC0(stdout);
    return;
  }

  int num_fields = FUNC10(con);
  if (num_fields != 0) {  // select and show kinds of commands
    int error_no = 0;
    int numOfRows = FUNC4(con, fname, &error_no, printMode);
    if (numOfRows < 0) return;

    et = FUNC6();
    if (error_no == 0) {
      FUNC2("Query OK, %d row(s) in set (%.6fs)\n", numOfRows, (et - st) / 1E6);
    } else {
      FUNC2("Query interrupted (%s), %d row(s) in set (%.6fs)\n", FUNC9(con), numOfRows, (et - st) / 1E6);
    }
  } else {
    int num_rows_affacted = FUNC7(con);
    et = FUNC6();
    FUNC2("Query OK, %d row(s) affected (%.6fs)\n", num_rows_affacted, (et - st) / 1E6);
  }

  FUNC2("\n");

  if (fname != NULL) {
    FUNC13(&full_path);
  }
  return;
}