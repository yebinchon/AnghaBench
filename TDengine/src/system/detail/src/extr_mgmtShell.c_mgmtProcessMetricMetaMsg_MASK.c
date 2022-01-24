#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_12__ {int /*<<< orphan*/  thandle; TYPE_1__* pDb; } ;
struct TYPE_11__ {int /*<<< orphan*/  meterId; } ;
struct TYPE_10__ {int numOfMeters; int join; int joinCondLen; int* metaElem; } ;
struct TYPE_9__ {int /*<<< orphan*/  code; } ;
struct TYPE_8__ {scalar_t__ dropStatus; } ;
typedef  TYPE_2__ STaosRsp ;
typedef  int /*<<< orphan*/  STabObj ;
typedef  TYPE_3__ SMetricMetaMsg ;
typedef  TYPE_4__ SMetricMetaElemMsg ;
typedef  TYPE_5__ SConnObj ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_CODE_DB_NOT_SELECTED ; 
 int /*<<< orphan*/  TSDB_CODE_INVALID_TABLE ; 
 int /*<<< orphan*/  TSDB_CODE_SERV_OUT_OF_MEMORY ; 
 scalar_t__ TSDB_DB_STATUS_READY ; 
 int /*<<< orphan*/  TSDB_MSG_TYPE_METRIC_META_RSP ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char**,TYPE_3__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(char *pMsg, int msgLen, SConnObj *pConn) {
  SMetricMetaMsg *pMetricMetaMsg = (SMetricMetaMsg *)pMsg;
  STabObj *       pMetric;
  STaosRsp *      pRsp;
  char *          pStart;

  pMetricMetaMsg->numOfMeters = FUNC0(pMetricMetaMsg->numOfMeters);

  pMetricMetaMsg->join = FUNC0(pMetricMetaMsg->join);
  pMetricMetaMsg->joinCondLen = FUNC0(pMetricMetaMsg->joinCondLen);

  for (int32_t i = 0; i < pMetricMetaMsg->numOfMeters; ++i) {
    pMetricMetaMsg->metaElem[i] = FUNC0(pMetricMetaMsg->metaElem[i]);
  }

  SMetricMetaElemMsg *pElem = (SMetricMetaElemMsg *)(((char *)pMetricMetaMsg) + pMetricMetaMsg->metaElem[0]);
  pMetric = FUNC1(pElem->meterId);

  if (pMetric == NULL || (pConn->pDb != NULL && pConn->pDb->dropStatus != TSDB_DB_STATUS_READY)) {
    pStart = FUNC3(pConn->thandle, TSDB_MSG_TYPE_METRIC_META_RSP);
    if (pStart == NULL) {
      FUNC5(pConn->thandle, TSDB_MSG_TYPE_METRIC_META_RSP, TSDB_CODE_SERV_OUT_OF_MEMORY);
      return 0;
    }

    pMsg = pStart;
    pRsp = (STaosRsp *)pMsg;
    if (pConn->pDb)
      pRsp->code = TSDB_CODE_INVALID_TABLE;
    else
      pRsp->code = TSDB_CODE_DB_NOT_SELECTED;
    pMsg++;

    msgLen = pMsg - pStart;
  } else {
    msgLen = FUNC2(pConn->thandle, &pStart, pMetricMetaMsg);
    if (msgLen <= 0) {
      FUNC5(pConn->thandle, TSDB_MSG_TYPE_METRIC_META_RSP, TSDB_CODE_SERV_OUT_OF_MEMORY);
      return 0;
    }
  }

  FUNC4(pConn->thandle, pStart, msgLen);

  return msgLen;
}