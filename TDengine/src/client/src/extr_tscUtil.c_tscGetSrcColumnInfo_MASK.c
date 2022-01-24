#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
typedef  int int16_t ;
struct TYPE_22__ {int* tagColumnIndex; int /*<<< orphan*/  pMeterMeta; } ;
struct TYPE_21__ {int /*<<< orphan*/  type; } ;
struct TYPE_16__ {size_t numOfExprs; } ;
struct TYPE_20__ {TYPE_1__ exprsInfo; } ;
struct TYPE_17__ {size_t colIdx; int /*<<< orphan*/  flag; } ;
struct TYPE_19__ {TYPE_2__ colInfo; int /*<<< orphan*/  functionId; } ;
struct TYPE_18__ {int /*<<< orphan*/  type; int /*<<< orphan*/  functionId; } ;
typedef  TYPE_3__ SSrcColumnInfo ;
typedef  TYPE_4__ SSqlExpr ;
typedef  TYPE_5__ SSqlCmd ;
typedef  TYPE_6__ SSchema ;
typedef  TYPE_7__ SMeterMetaInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSDB_DATA_TYPE_BINARY ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (TYPE_5__*,size_t) ; 

void FUNC5(SSrcColumnInfo* pColInfo, SSqlCmd* pCmd) {
  SMeterMetaInfo* pMeterMetaInfo = FUNC3(pCmd, 0);
  SSchema*        pSchema = FUNC1(pMeterMetaInfo->pMeterMeta);

  for (int32_t i = 0; i < pCmd->exprsInfo.numOfExprs; ++i) {
    SSqlExpr* pExpr = FUNC4(pCmd, i);
    pColInfo[i].functionId = pExpr->functionId;

    if (FUNC0(pExpr->colInfo.flag)) {
      SSchema* pTagSchema = FUNC2(pMeterMetaInfo->pMeterMeta);
      int16_t  actualTagIndex = pMeterMetaInfo->tagColumnIndex[pExpr->colInfo.colIdx];

      pColInfo[i].type = (actualTagIndex != -1) ? pTagSchema[actualTagIndex].type : TSDB_DATA_TYPE_BINARY;
    } else {
      pColInfo[i].type = pSchema[pExpr->colInfo.colIdx].type;
    }
  }
}