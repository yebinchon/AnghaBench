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
typedef  int /*<<< orphan*/  TAOS ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_COMMAND_SIZE ; 
 int /*<<< orphan*/  cleanup_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ indicator ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oldtio ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

void *FUNC9(void *arg) {
  if (indicator) {
    FUNC0(&oldtio);
    indicator = 0;
  }

  TAOS *con = (TAOS *)arg;

  FUNC4(cleanup_handler, NULL);

  char *command = FUNC1(MAX_COMMAND_SIZE);

  while (1) {
    // Read command from shell.

    FUNC2(command, 0, MAX_COMMAND_SIZE);
    FUNC6();
    FUNC7(con, command);
    FUNC5();

    if (command != NULL) {
      // Run the command
      FUNC8(con, command);
    }
  }

  FUNC3(1);

  return NULL;
}