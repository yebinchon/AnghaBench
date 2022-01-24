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
struct TYPE_2__ {scalar_t__ num; int /*<<< orphan*/  (* cleanUpFp ) () ;int /*<<< orphan*/  (* stopFp ) () ;} ;

/* Variables and functions */
 int TSDB_MOD_MAX ; 
 size_t TSDB_MOD_MGMT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int tsDnodeStopping ; 
 TYPE_1__* tsModule ; 
 int /*<<< orphan*/ * tsStatusTimer ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7() {
  if (tsDnodeStopping) return;
  tsDnodeStopping = true;

  if (tsStatusTimer != NULL) {
    FUNC5(&tsStatusTimer);
    tsStatusTimer = NULL;
  }

  for (int mod = 1; mod < TSDB_MOD_MAX; ++mod) {
    if (tsModule[mod].num != 0 && tsModule[mod].stopFp) {
      (*tsModule[mod].stopFp)();
    }
    if (tsModule[mod].num != 0 && tsModule[mod].cleanUpFp) {
      (*tsModule[mod].cleanUpFp)();
    }
  }

  if (tsModule[TSDB_MOD_MGMT].num != 0 && tsModule[TSDB_MOD_MGMT].cleanUpFp) {
    (*tsModule[TSDB_MOD_MGMT].cleanUpFp)();
  }

  FUNC6();

  FUNC4();
  FUNC3();
}