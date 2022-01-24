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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ mseconds; scalar_t__ stime; char* name; int /*<<< orphan*/  taos; int /*<<< orphan*/ * result; scalar_t__ lastKey; struct TYPE_2__* signature; } ;
typedef  int /*<<< orphan*/  TAOS_SUB ;
typedef  scalar_t__* TAOS_ROW ;
typedef  TYPE_1__ SSub ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,scalar_t__) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

TAOS_ROW FUNC9(TAOS_SUB *tsub) {
  SSub *   pSub = (SSub *)tsub;
  TAOS_ROW row;
  char     qstr[256];

  if (pSub == NULL) return NULL;
  if (pSub->signature != pSub) return NULL;

  while (1) {
    if (pSub->result != NULL) {
      row = FUNC4(pSub->result);
      if (row != NULL) {
        pSub->lastKey = *((uint64_t *)row[0]);
        return row;
      }

      FUNC5(pSub->result);
      pSub->result = NULL;
      uint64_t etime = FUNC1();
      int64_t  mseconds = pSub->mseconds - etime + pSub->stime;
      if (mseconds < 0) mseconds = 0;
      FUNC2((int)mseconds);
    }

    pSub->stime = FUNC1();

    FUNC0(qstr, "select * from %s where _c0 > %lld order by _c0 asc", pSub->name, pSub->lastKey);
    if (FUNC6(pSub->taos, qstr)) {
      FUNC8("failed to select, reason:%s", FUNC3(pSub->taos));
      return NULL;
    }

    pSub->result = FUNC7(pSub->taos);

    if (pSub->result == NULL) {
      FUNC8("failed to get result, reason:%s", FUNC3(pSub->taos));
      return NULL;
    }
  }

  return NULL;
}