
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef size_t int32_t ;
typedef void* int16_t ;
struct TYPE_16__ {int pMeterMeta; } ;
struct TYPE_13__ {size_t numOfExprs; TYPE_3__* pExprs; } ;
struct TYPE_15__ {TYPE_2__ exprsInfo; } ;
struct TYPE_12__ {int colId; void* colIdx; } ;
struct TYPE_14__ {void* resBytes; void* resType; TYPE_1__ colInfo; void* functionId; } ;
struct TYPE_11__ {int colId; } ;
typedef TYPE_2__ SSqlExprInfo ;
typedef TYPE_3__ SSqlExpr ;
typedef TYPE_4__ SSqlCmd ;
typedef TYPE_5__ SMeterMetaInfo ;


 TYPE_10__* tsGetColumnSchema (int ,void*) ;
 TYPE_5__* tscGetMeterMetaInfo (TYPE_4__*,int ) ;

SSqlExpr* tscSqlExprUpdate(SSqlCmd* pCmd, int32_t index, int16_t functionId, int16_t srcColumnIndex, int16_t type,
                           int16_t size) {
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  SSqlExprInfo* pExprInfo = &pCmd->exprsInfo;
  if (index > pExprInfo->numOfExprs) {
    return ((void*)0);
  }

  SSqlExpr* pExpr = &pExprInfo->pExprs[index];

  pExpr->functionId = functionId;

  pExpr->colInfo.colIdx = srcColumnIndex;
  pExpr->colInfo.colId = tsGetColumnSchema(pMeterMetaInfo->pMeterMeta, srcColumnIndex)->colId;

  pExpr->resType = type;
  pExpr->resBytes = size;

  return pExpr;
}
