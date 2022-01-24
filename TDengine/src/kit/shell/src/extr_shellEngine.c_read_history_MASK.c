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
struct TYPE_2__ {int hstart; size_t hend; int /*<<< orphan*/ * hist; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_HISTORY_SIZE ; 
 int /*<<< orphan*/  R_OK ; 
 int TSDB_FILENAME_LEN ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char**,size_t*,int /*<<< orphan*/ *) ; 
 TYPE_1__ history ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void FUNC9() {
  // Initialize history
  FUNC7(history.hist, 0, sizeof(char *) * MAX_HISTORY_SIZE);
  history.hstart = 0;
  history.hend = 0;
  char * line = NULL;
  size_t line_size = 0;
  int    read_size = 0;

  char f_history[TSDB_FILENAME_LEN];
  FUNC5(f_history);

  if (FUNC0(f_history, R_OK) == -1) {
    return;
  }

  FILE *f = FUNC2(f_history, "r");
  if (f == NULL) {
    FUNC3(stderr, "Opening file %s\n", f_history);
    return;
  }

  while ((read_size = FUNC6(&line, &line_size, f)) != -1) {
    line[read_size - 1] = '\0';
    history.hist[history.hend] = FUNC8(line);

    history.hend = (history.hend + 1) % MAX_HISTORY_SIZE;

    if (history.hend == history.hstart) {
      history.hstart = (history.hstart + 1) % MAX_HISTORY_SIZE;
    }
  }

  FUNC4(line);
  FUNC1(f);
}