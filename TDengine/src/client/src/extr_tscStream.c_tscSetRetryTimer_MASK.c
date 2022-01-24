#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {int /*<<< orphan*/  command; } ;
struct TYPE_10__ {TYPE_8__ cmd; } ;
struct TYPE_9__ {scalar_t__ etime; scalar_t__ stime; scalar_t__ interval; int /*<<< orphan*/  pTimer; int /*<<< orphan*/  pSql; int /*<<< orphan*/  param; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  precision; } ;
typedef  TYPE_1__ SSqlStream ;
typedef  TYPE_2__ SSqlObj ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_SQL_SELECT ; 
 scalar_t__ FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ tsMaxRetentWindow ; 
 int /*<<< orphan*/  tscProcessStreamTimer ; 
 int /*<<< orphan*/  tscTmr ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,scalar_t__,...) ; 

__attribute__((used)) static void FUNC6(SSqlStream *pStream, SSqlObj *pSql, int64_t timer) {
  if (FUNC0(&pSql->cmd)) {
    int64_t now = FUNC2(pStream->precision);
    int64_t etime = now > pStream->etime ? pStream->etime : now;

    if (pStream->etime < now && now - pStream->etime > tsMaxRetentWindow) {
      /*
       * current time window will be closed, since it too early to exceed the maxRetentWindow value
       */
      FUNC5("%p stream:%p, etime:%lld is too old, exceeds the max retention time window:%lld, stop the stream",
               pStream->pSql, pStream, pStream->stime, pStream->etime);
      // TODO : How to terminate stream here
      FUNC4(pStream);
      if (pStream->callback) {
        // Callback function from upper level
        pStream->callback(pStream->param);
      }
      return;
    }

    FUNC5("%p stream:%p, next query start at %lld, in %lldms. query range %lld-%lld", pStream->pSql, pStream,
             now + timer, timer, pStream->stime, etime);
  } else {
    FUNC5("%p stream:%p, next query start at %lld, in %lldms. query range %lld-%lld", pStream->pSql, pStream,
             pStream->stime, timer, pStream->stime - pStream->interval, pStream->stime - 1);
  }

  pSql->cmd.command = TSDB_SQL_SELECT;

  // start timer for next computing
  FUNC3(tscProcessStreamTimer, timer, pStream, tscTmr, &pStream->pTimer);
}