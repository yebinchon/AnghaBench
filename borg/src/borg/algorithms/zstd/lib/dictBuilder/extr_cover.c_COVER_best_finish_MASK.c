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
typedef  int /*<<< orphan*/  ZDICT_cover_params_t ;
struct TYPE_3__ {size_t liveJobs; size_t compressedSize; size_t dictSize; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  parameters; scalar_t__ dict; } ;
typedef  TYPE_1__ COVER_best_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,void*,size_t) ; 

void FUNC8(COVER_best_t *best, size_t compressedSize,
                              ZDICT_cover_params_t parameters, void *dict,
                              size_t dictSize) {
  if (!best) {
    return;
  }
  {
    size_t liveJobs;
    FUNC3(&best->mutex);
    --best->liveJobs;
    liveJobs = best->liveJobs;
    /* If the new dictionary is better */
    if (compressedSize < best->compressedSize) {
      /* Allocate space if necessary */
      if (!best->dict || best->dictSize < dictSize) {
        if (best->dict) {
          FUNC5(best->dict);
        }
        best->dict = FUNC6(dictSize);
        if (!best->dict) {
          best->compressedSize = FUNC0(GENERIC);
          best->dictSize = 0;
          FUNC2(&best->cond);
          FUNC4(&best->mutex);
          return;
        }
      }
      /* Save the dictionary, parameters, and size */
      FUNC7(best->dict, dict, dictSize);
      best->dictSize = dictSize;
      best->parameters = parameters;
      best->compressedSize = compressedSize;
    }
    if (liveJobs == 0) {
      FUNC1(&best->cond);
    }
    FUNC4(&best->mutex);
  }
}