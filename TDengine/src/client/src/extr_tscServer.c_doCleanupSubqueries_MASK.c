#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tOrderDescriptor ;
typedef  int /*<<< orphan*/  tExtMemBuffer ;
typedef  int /*<<< orphan*/  tColModel ;
typedef  scalar_t__ int32_t ;
struct TYPE_11__ {int /*<<< orphan*/  code; } ;
struct TYPE_10__ {int /*<<< orphan*/  command; } ;
struct TYPE_13__ {TYPE_2__ res; TYPE_1__ cmd; } ;
struct TYPE_12__ {int /*<<< orphan*/  queryMutex; struct TYPE_12__* localBuffer; } ;
typedef  TYPE_3__ SSubqueryState ;
typedef  TYPE_4__ SSqlObj ;
typedef  TYPE_3__ SRetrieveSupport ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_CODE_CLI_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  TSDB_SQL_RETRIEVE_METRIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC4(SSqlObj *pSql, int32_t vnodeIndex, int32_t numOfVnodes, SRetrieveSupport *pTrs,
                                tOrderDescriptor *pDesc, tColModel *pModel, tExtMemBuffer **pMemoryBuf,
                                SSubqueryState *pState) {
  pSql->cmd.command = TSDB_SQL_RETRIEVE_METRIC;
  pSql->res.code = TSDB_CODE_CLI_OUT_OF_MEMORY;

  /*
   * if i > 0, at least one sub query is issued, the allocated resource is
   * freed by it when subquery completed.
   */
  if (vnodeIndex == 0) {
    FUNC3(pMemoryBuf, pDesc, pModel, numOfVnodes);
    FUNC2(pState);

    if (pTrs != NULL) {
      FUNC2(pTrs->localBuffer);

      FUNC1(&pTrs->queryMutex);
      FUNC0(&pTrs->queryMutex);
      FUNC2(pTrs);
    }
  }
}