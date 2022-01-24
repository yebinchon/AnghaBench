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
struct TYPE_11__ {int /*<<< orphan*/  queryMutex; struct TYPE_11__* localBuffer; } ;
struct TYPE_9__ {scalar_t__ code; } ;
struct TYPE_10__ {TYPE_1__ res; } ;
typedef  TYPE_2__ SSqlObj ;
typedef  TYPE_3__ SRetrieveSupport ;

/* Variables and functions */
 scalar_t__ TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(SRetrieveSupport *trsupport, SSqlObj *pSql) {
  FUNC4("%p start to free subquery result", pSql);

  if (pSql->res.code == TSDB_CODE_SUCCESS) {
    FUNC2(pSql);
  }

  FUNC3(trsupport->localBuffer);

  FUNC1(&trsupport->queryMutex);
  FUNC0(&trsupport->queryMutex);

  FUNC3(trsupport);
}