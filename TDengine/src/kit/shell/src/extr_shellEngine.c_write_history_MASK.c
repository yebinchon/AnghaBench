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
struct TYPE_2__ {int hstart; int hend; char** hist; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_HISTORY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ history ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5() {
  char f_history[128];
  FUNC3(f_history);

  FILE *f = FUNC1(f_history, "w");
  if (f == NULL) {
    FUNC2(stderr, "Opening file %s\n", f_history);
    return;
  }

  for (int i = history.hstart; i != history.hend;) {
    if (history.hist[i] != NULL) {
      FUNC2(f, "%s\n", history.hist[i]);
      FUNC4(history.hist[i]);
    }
    i = (i + 1) % MAX_HISTORY_SIZE;
  }
  FUNC0(f);
}