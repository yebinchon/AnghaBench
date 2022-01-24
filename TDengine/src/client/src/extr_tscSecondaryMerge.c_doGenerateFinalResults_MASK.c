#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_11__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
struct TYPE_26__ {int numOfElems; scalar_t__ data; } ;
typedef  TYPE_5__ tFilePage ;
struct TYPE_27__ {int* colOffset; TYPE_4__* pFields; int /*<<< orphan*/  maxCapacity; } ;
typedef  TYPE_6__ tColModel ;
typedef  size_t int32_t ;
struct TYPE_24__ {size_t numOfGroupCols; } ;
struct TYPE_23__ {size_t numOfOutputCols; } ;
struct TYPE_22__ {scalar_t__ offset; } ;
struct TYPE_30__ {int /*<<< orphan*/  interpoType; TYPE_3__ groupbyExpr; TYPE_2__ fieldsInfo; TYPE_1__ slimit; } ;
struct TYPE_28__ {scalar_t__ numOfRows; int /*<<< orphan*/  code; } ;
struct TYPE_29__ {TYPE_7__ res; TYPE_9__ cmd; } ;
struct TYPE_25__ {int /*<<< orphan*/  bytes; } ;
struct TYPE_21__ {scalar_t__* pTags; } ;
struct TYPE_20__ {int discard; TYPE_11__ interpolationInfo; scalar_t__ pBufForInterpo; TYPE_6__* resColModel; int /*<<< orphan*/  nResultBufSize; TYPE_5__* pResultBuf; } ;
typedef  TYPE_7__ SSqlRes ;
typedef  TYPE_8__ SSqlObj ;
typedef  TYPE_9__ SSqlCmd ;
typedef  TYPE_10__ SLocalReducer ;
typedef  TYPE_11__ SInterpolationInfo ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*,int,int /*<<< orphan*/ ) ; 

bool FUNC6(SSqlObj *pSql, SLocalReducer *pLocalReducer, bool noMoreCurrentGroupRes) {
  SSqlCmd *  pCmd = &pSql->cmd;
  SSqlRes *  pRes = &pSql->res;
  tFilePage *pResBuf = pLocalReducer->pResultBuf;
  tColModel *pModel = pLocalReducer->resColModel;

  pRes->code = TSDB_CODE_SUCCESS;

  /*
   * ignore the output of the current group since this group is skipped by user
   * We set the numOfRows to be 0 and discard the possible remain results.
   */
  if (pCmd->slimit.offset > 0) {
    pRes->numOfRows = 0;
    pCmd->slimit.offset -= 1;
    pLocalReducer->discard = !noMoreCurrentGroupRes;
    return false;
  }

  FUNC3(pModel, pResBuf, pModel->maxCapacity);
  FUNC1(pLocalReducer->pBufForInterpo, pResBuf->data, pLocalReducer->nResultBufSize);

#ifdef _DEBUG_VIEW
  printf("final result before interpo:\n");
  tColModelDisplay(pLocalReducer->resColModel, pLocalReducer->pBufForInterpo, pResBuf->numOfElems, pResBuf->numOfElems);
#endif

  SInterpolationInfo *pInterpoInfo = &pLocalReducer->interpolationInfo;
  int32_t             startIndex = pCmd->fieldsInfo.numOfOutputCols - pCmd->groupbyExpr.numOfGroupCols;

  for (int32_t i = 0; i < pCmd->groupbyExpr.numOfGroupCols; ++i) {
    FUNC1(pInterpoInfo->pTags[i],
           pLocalReducer->pBufForInterpo + pModel->colOffset[startIndex + i] * pResBuf->numOfElems,
           pModel->pFields[startIndex + i].bytes);
  }

  FUNC5(&pLocalReducer->interpolationInfo, pResBuf->numOfElems, pCmd->interpoType);
  FUNC0(pSql, pLocalReducer, noMoreCurrentGroupRes);

  return true;
}