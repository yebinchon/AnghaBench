#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ liveJobs; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ COVER_best_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(COVER_best_t *best) {
  if (!best) {
    return;
  }
  FUNC1(&best->mutex);
  while (best->liveJobs != 0) {
    FUNC0(&best->cond, &best->mutex);
  }
  FUNC2(&best->mutex);
}