#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {scalar_t__ stime; } ;
struct TYPE_10__ {TYPE_3__ cmd; } ;
struct TYPE_9__ {scalar_t__ interval; int /*<<< orphan*/  precision; void* slidingTime; } ;
typedef  TYPE_1__ SSqlStream ;
typedef  TYPE_2__ SSqlObj ;
typedef  TYPE_3__ SSqlCmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* tsProjectExecInterval ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,TYPE_1__*,scalar_t__,...) ; 

__attribute__((used)) static int64_t FUNC4(SSqlObj *pSql, SSqlStream *pStream, int64_t stime) {
  SSqlCmd *pCmd = &pSql->cmd;

  if (FUNC1(pCmd)) {
    // no data in table, flush all data till now to destination meter, 10sec delay
    pStream->interval = tsProjectExecInterval;
    pStream->slidingTime = tsProjectExecInterval;

    if (stime != 0) {  // first projection start from the latest event timestamp
      FUNC0(stime >= pCmd->stime);
      stime += 1;  // exclude the last records from table
    } else {
      stime = pCmd->stime;
    }
  } else {             // timewindow based aggregation stream
    if (stime == 0) {  // no data in meter till now
      stime = ((int64_t)FUNC2(pStream->precision) / pStream->interval) * pStream->interval;
      FUNC3("%p stream:%p, last timestamp:0, reset to:%lld", pSql, pStream, stime);
    } else {
      int64_t newStime = (stime / pStream->interval) * pStream->interval;
      if (newStime != stime) {
        FUNC3("%p stream:%p, last timestamp:%lld, reset to:%lld", pSql, pStream, stime, newStime);
        stime = newStime;
      }
    }
  }

  return stime;
}