#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ command; } ;
struct TYPE_5__ {int /*<<< orphan*/  code; } ;
struct TYPE_6__ {int /*<<< orphan*/ * thandle; TYPE_4__ cmd; TYPE_1__ res; struct TYPE_6__* signature; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_2__ SSqlObj ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_CODE_QUERY_CANCELLED ; 
 scalar_t__ TSDB_SQL_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

void FUNC4(TAOS_RES *res) {
  if (res == NULL) return;

  SSqlObj *pSql = (SSqlObj *)res;
  if (pSql->signature != pSql) return;
  FUNC3("%p start to cancel query", res);

  pSql->res.code = TSDB_CODE_QUERY_CANCELLED;

  if (FUNC1(&pSql->cmd)) {
    FUNC2(pSql);
    return;
  }

  if (pSql->cmd.command >= TSDB_SQL_LOCAL) {
    return;
  }

  if (pSql->thandle == NULL) {
    FUNC3("%p no connection, abort cancel", res);
    return;
  }

  FUNC0(pSql->thandle);
  FUNC3("%p query is cancelled", res);
}