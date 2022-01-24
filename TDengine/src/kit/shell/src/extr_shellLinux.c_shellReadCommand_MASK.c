#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_16__ {char* buffer; char* command; } ;
struct TYPE_15__ {unsigned int hend; unsigned int hstart; char** hist; } ;
typedef  int /*<<< orphan*/  TAOS ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_COMMAND_SIZE ; 
 unsigned int MAX_HISTORY_SIZE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char FUNC5 () ; 
 TYPE_12__ history ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 () ; 

void FUNC23(TAOS *con, char *command) {
  unsigned hist_counter = history.hend;
  char utf8_array[10] = "\0";
  Command cmd;
  FUNC9(&cmd, 0, sizeof(cmd));
  cmd.buffer = (char *)FUNC1(1, MAX_COMMAND_SIZE);
  cmd.command = (char *)FUNC1(1, MAX_COMMAND_SIZE);
  FUNC16(&cmd);

  // Read input.
  char c;
  while (1) {
    c = FUNC5();

    if (c < 0) {  // For UTF-8
      int count = FUNC2(c);
      utf8_array[0] = c;
      for (int k = 1; k < count; k++) {
        c = FUNC5();
        utf8_array[k] = c;
      }
      FUNC6(&cmd, utf8_array, count);
    } else if (c < '\033') {
      // Ctrl keys.  TODO: Implement ctrl combinations
      switch (c) {
        case 1:  // ctrl A
          FUNC13(&cmd);
          break;
        case 3:
          FUNC14("\n");
          FUNC15(&cmd, "");
          FUNC8(0, SIGINT);
          break;
        case 4:  // EOF or Ctrl+D
          FUNC14("\n");
          FUNC19(con);
          // write the history
          FUNC22();
          FUNC4();
          break;
        case 5:  // ctrl E
          FUNC12(&cmd);
          break;
        case 8:
          FUNC0(&cmd);
          break;
        case '\n':
        case '\r':
          FUNC14("\n");
          if (FUNC7(&cmd)) {
            FUNC17(command, "%s%s", cmd.buffer, cmd.command);
            FUNC20(cmd.buffer);
            FUNC20(cmd.command);
            return;
          } else {
            FUNC21(&cmd);
          }
          break;
        case 12:  // Ctrl + L;
          FUNC18("clear");
          FUNC16(&cmd);
          break;
      }
    } else if (c == '\033') {
      c = FUNC5();
      switch (c) {
        case '[':
          c = FUNC5();
          switch (c) {
            case 'A':  // Up arrow
              if (hist_counter != history.hstart) {
                hist_counter = (hist_counter + MAX_HISTORY_SIZE - 1) % MAX_HISTORY_SIZE;
                FUNC15(&cmd, (history.hist[hist_counter] == NULL) ? "" : history.hist[hist_counter]);
              }
              break;
            case 'B':  // Down arrow
              if (hist_counter != history.hend) {
                int next_hist = (hist_counter + 1) % MAX_HISTORY_SIZE;

                if (next_hist != history.hend) {
                  FUNC15(&cmd, (history.hist[next_hist] == NULL) ? "" : history.hist[next_hist]);
                } else {
                  FUNC15(&cmd, "");
                }
                hist_counter = next_hist;
              }
              break;
            case 'C':  // Right arrow
              FUNC11(&cmd);
              break;
            case 'D':  // Left arrow
              FUNC10(&cmd);
              break;
            case '1':
              if ((c = FUNC5()) == '~') {
                // Home key
                FUNC13(&cmd);
              }
              break;
            case '2':
              if ((c = FUNC5()) == '~') {
                // Insert key
              }
              break;
            case '3':
              if ((c = FUNC5()) == '~') {
                // Delete key
                FUNC3(&cmd);
              }
              break;
            case '4':
              if ((c = FUNC5()) == '~') {
                // End key
                FUNC12(&cmd);
              }
              break;
            case '5':
              if ((c = FUNC5()) == '~') {
                // Page up key
              }
              break;
            case '6':
              if ((c = FUNC5()) == '~') {
                // Page down key
              }
              break;
            case 72:
              // Home key
              FUNC13(&cmd);
              break;
            case 70:
              // End key
              FUNC12(&cmd);
              break;
          }
          break;
      }
    } else if (c == 0x7f) {
      // press delete key
      FUNC0(&cmd);
    } else {
      FUNC6(&cmd, &c, 1);
    }
  }
}