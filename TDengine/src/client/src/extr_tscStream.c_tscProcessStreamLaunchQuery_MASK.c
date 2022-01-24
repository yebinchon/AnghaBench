#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_23__ {int /*<<< orphan*/  name; } ;
struct TYPE_22__ {scalar_t__ ahandle; } ;
struct TYPE_19__ {int code; } ;
struct TYPE_21__ {int /*<<< orphan*/  cmd; TYPE_1__ res; TYPE_2__* param; int /*<<< orphan*/  fp; } ;
struct TYPE_20__ {TYPE_3__* pSql; int /*<<< orphan*/  precision; int /*<<< orphan*/  slidingTime; } ;
typedef  TYPE_2__ SSqlStream ;
typedef  TYPE_3__ SSqlObj ;
typedef  TYPE_4__ SSchedMsg ;
typedef  TYPE_5__ SMeterMetaInfo ;

/* Variables and functions */
 int TSDB_CODE_ACTION_IN_PROGRESS ; 
 int TSDB_CODE_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  tscProcessStreamQueryCallback ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(SSchedMsg *pMsg) {
  SSqlStream *pStream = (SSqlStream *)pMsg->ahandle;
  SSqlObj *   pSql = pStream->pSql;

  pSql->fp = tscProcessStreamQueryCallback;
  pSql->param = pStream;
  SMeterMetaInfo *pMeterMetaInfo = FUNC3(&pSql->cmd, 0);

  int code = FUNC2(pSql, pMeterMetaInfo->name, 0);
  pSql->res.code = code;

  if (code == TSDB_CODE_ACTION_IN_PROGRESS) return;

  if (code == 0 && FUNC0(pMeterMetaInfo)) {
    code = FUNC4(pSql);
    pSql->res.code = code;

    if (code == TSDB_CODE_ACTION_IN_PROGRESS) return;
  }

  FUNC9(&pSql->cmd);

  // failed to get meter/metric meta, retry in 10sec.
  if (code != TSDB_CODE_SUCCESS) {
    int64_t retryDelayTime = FUNC5(pStream->slidingTime, pStream->precision);
    FUNC1("%p stream:%p,get metermeta failed, retry in %lldms", pStream->pSql, pStream, retryDelayTime);

    FUNC8(pStream, pSql, retryDelayTime);
    return;
  }

  FUNC10("%p stream:%p start stream query on:%s", pSql, pStream, pMeterMetaInfo->name);
  FUNC7(pStream->pSql);

  FUNC6(pStream);
}