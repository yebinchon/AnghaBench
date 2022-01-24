#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  thandle; struct TYPE_7__* next; int /*<<< orphan*/  queryId; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; TYPE_2__* sqlList; } ;
typedef  TYPE_1__ STscObj ;
typedef  TYPE_2__ SSqlObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(STscObj *pObj, uint32_t killId) {
  FUNC0(&pObj->mutex);

  SSqlObj *pSql = pObj->sqlList;
  while (pSql) {
    if (pSql->queryId == killId) break;
    pSql = pSql->next;
  }

  FUNC1(&pObj->mutex);

  if (pSql == NULL) return;

  FUNC3("%p query is killed, queryId:%d thandle:%p", pSql, killId, pSql->thandle);
  FUNC2(pSql);
}