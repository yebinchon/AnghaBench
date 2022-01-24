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
struct TYPE_2__ {int hstart; int hend; int /*<<< orphan*/ ** hist; } ;
typedef  int /*<<< orphan*/  TAOS ;

/* Variables and functions */
 int MAX_HISTORY_SIZE ; 
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ history ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 char* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(TAOS *con, char *command) {
  /* If command is empty just return */
  if (FUNC2(command, "^[ \t;]*$", REG_EXTENDED)) {
    return;
  }

  /* Update the history vector. */
  if (history.hstart == history.hend ||
      history.hist[(history.hend + MAX_HISTORY_SIZE - 1) % MAX_HISTORY_SIZE] == NULL ||
      FUNC6(command, history.hist[(history.hend + MAX_HISTORY_SIZE - 1) % MAX_HISTORY_SIZE]) != 0) {
    if (history.hist[history.hend] != NULL) {
      FUNC11(history.hist[history.hend]);
    }
    history.hist[history.hend] = FUNC7(command);

    history.hend = (history.hend + 1) % MAX_HISTORY_SIZE;
    if (history.hend == history.hstart) {
      history.hstart = (history.hstart + 1) % MAX_HISTORY_SIZE;
    }
  }

  FUNC3(command);

  // Analyse the command.
  if (FUNC2(command, "^[ \t]*(quit|q|exit)[ \t;]*$", REG_EXTENDED | REG_ICASE)) {
    FUNC10(con);
    FUNC12();
    FUNC1();
  } else if (FUNC2(command, "^[\t ]*clear[ \t;]*$", REG_EXTENDED | REG_ICASE)) {
    // If clear the screen.
    FUNC9("clear");
    return;
  } else if (FUNC2(command, "^[ \t]*source[\t ]+[^ ]+[ \t;]*$", REG_EXTENDED | REG_ICASE)) {
    /* If source file. */
    char *c_ptr = FUNC8(command, " ;");
    FUNC0(c_ptr != NULL);
    c_ptr = FUNC8(NULL, " ;");
    FUNC0(c_ptr != NULL);

    FUNC5(con, c_ptr);
  } else {
    FUNC4(con, command);
  }
}