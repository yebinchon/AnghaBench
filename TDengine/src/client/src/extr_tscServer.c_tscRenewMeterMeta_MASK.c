#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  uid; int /*<<< orphan*/  numOfTags; } ;
struct TYPE_14__ {TYPE_6__* pMeterMeta; int /*<<< orphan*/  numOfTags; } ;
struct TYPE_13__ {int /*<<< orphan*/  numOfCols; } ;
struct TYPE_12__ {void* fp; TYPE_2__ cmd; } ;
typedef  TYPE_1__ SSqlObj ;
typedef  TYPE_2__ SSqlCmd ;
typedef  TYPE_3__ SMeterMetaInfo ;

/* Variables and functions */
 int TSDB_CODE_ACTION_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  tscCacheHandle ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

int FUNC6(SSqlObj *pSql, char *meterId) {
  int             code = 0;
  SMeterMetaInfo *pMeterMetaInfo = FUNC2(&pSql->cmd, 0);

  // handle metric meta renew process
  SSqlCmd *pCmd = &pSql->cmd;

  // enforce the renew metermeta operation in async model
  if (pSql->fp == NULL) pSql->fp = (void *)0x1;

  /*
   * 1. only update the metermeta in force model metricmeta is not updated
   * 2. if get metermeta failed, still get the metermeta
   */
  if (pMeterMetaInfo->pMeterMeta == NULL || !FUNC3(pCmd)) {
    if (pMeterMetaInfo->pMeterMeta) {
      FUNC4("%p update meter meta, old: numOfTags:%d, numOfCols:%d, uid:%d, addr:%p", pSql,
               pMeterMetaInfo->numOfTags, pCmd->numOfCols, pMeterMetaInfo->pMeterMeta->uid, pMeterMetaInfo->pMeterMeta);
    }
    FUNC5(&pSql->cmd);
    FUNC0(tscCacheHandle, (void **)&(pMeterMetaInfo->pMeterMeta), true);

    code = FUNC1(pSql, meterId, 0);  // todo ??
  } else {
    FUNC4("%p metric query not update metric meta, numOfTags:%d, numOfCols:%d, uid:%lld, addr:%p", pSql,
             pMeterMetaInfo->pMeterMeta->numOfTags, pCmd->numOfCols, pMeterMetaInfo->pMeterMeta->uid,
             pMeterMetaInfo->pMeterMeta);
  }

  if (code != TSDB_CODE_ACTION_IN_PROGRESS) {
    if (pSql->fp == (void *)0x1) {
      pSql->fp = NULL;
    }
  }

  return code;
}