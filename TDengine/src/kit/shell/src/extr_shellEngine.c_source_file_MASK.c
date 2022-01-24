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
typedef  int /*<<< orphan*/  TAOS ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_COMMAND_SIZE ; 
 char* PROMPT_HEADER ; 
 int /*<<< orphan*/  R_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC12 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

void FUNC14(TAOS *con, char *fptr) {
  wordexp_t full_path;
  int       read_len = 0;
  char *    cmd = FUNC7(MAX_COMMAND_SIZE);
  size_t    cmd_len = 0;
  char *    line = NULL;
  size_t    line_len = 0;

  if (FUNC12(fptr, &full_path, 0) != 0) {
    FUNC3(stderr, "ERROR: illegal file name\n");
    return;
  }

  char *fname = full_path.we_wordv[0];

  if (FUNC0(fname, R_OK) == -1) {
    FUNC3(stderr, "ERROR: file %s is not readable\n", fptr);
    FUNC13(&full_path);
    return;
  }

  FILE *f = FUNC2(fname, "r");
  if (f == NULL) {
    FUNC3(stderr, "ERROR: failed to open file %s\n", fname);
    FUNC13(&full_path);
    return;
  }

  while ((read_len = FUNC5(&line, &line_len, f)) != -1) {
    if (read_len >= MAX_COMMAND_SIZE) continue;
    line[--read_len] = '\0';

    if (read_len == 0 || FUNC6(line)) {  // line starts with #
      continue;
    }

    if (line[read_len - 1] == '\\') {
      line[read_len - 1] = ' ';
      FUNC8(cmd + cmd_len, line, read_len);
      cmd_len += read_len;
      continue;
    }

    FUNC8(cmd + cmd_len, line, read_len);
    FUNC10("%s%s\n", PROMPT_HEADER, cmd);
    FUNC11(con, cmd);
    FUNC9(cmd, 0, MAX_COMMAND_SIZE);
    cmd_len = 0;
  }

  FUNC4(cmd);
  if (line) FUNC4(line);
  FUNC13(&full_path);
  FUNC1(f);
}