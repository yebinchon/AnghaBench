
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_22__ {int* tagColumnIndex; int pMeterMeta; } ;
struct TYPE_21__ {int type; } ;
struct TYPE_16__ {size_t numOfExprs; } ;
struct TYPE_20__ {TYPE_1__ exprsInfo; } ;
struct TYPE_17__ {size_t colIdx; int flag; } ;
struct TYPE_19__ {TYPE_2__ colInfo; int functionId; } ;
struct TYPE_18__ {int type; int functionId; } ;
typedef TYPE_3__ SSrcColumnInfo ;
typedef TYPE_4__ SSqlExpr ;
typedef TYPE_5__ SSqlCmd ;
typedef TYPE_6__ SSchema ;
typedef TYPE_7__ SMeterMetaInfo ;


 scalar_t__ TSDB_COL_IS_TAG (int ) ;
 int TSDB_DATA_TYPE_BINARY ;
 TYPE_6__* tsGetSchema (int ) ;
 TYPE_6__* tsGetTagSchema (int ) ;
 TYPE_7__* tscGetMeterMetaInfo (TYPE_5__*,int ) ;
 TYPE_4__* tscSqlExprGet (TYPE_5__*,size_t) ;

void tscGetSrcColumnInfo(SSrcColumnInfo* pColInfo, SSqlCmd* pCmd) {
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  SSchema* pSchema = tsGetSchema(pMeterMetaInfo->pMeterMeta);

  for (int32_t i = 0; i < pCmd->exprsInfo.numOfExprs; ++i) {
    SSqlExpr* pExpr = tscSqlExprGet(pCmd, i);
    pColInfo[i].functionId = pExpr->functionId;

    if (TSDB_COL_IS_TAG(pExpr->colInfo.flag)) {
      SSchema* pTagSchema = tsGetTagSchema(pMeterMetaInfo->pMeterMeta);
      int16_t actualTagIndex = pMeterMetaInfo->tagColumnIndex[pExpr->colInfo.colIdx];

      pColInfo[i].type = (actualTagIndex != -1) ? pTagSchema[actualTagIndex].type : TSDB_DATA_TYPE_BINARY;
    } else {
      pColInfo[i].type = pSchema[pExpr->colInfo.colIdx].type;
    }
  }
}
