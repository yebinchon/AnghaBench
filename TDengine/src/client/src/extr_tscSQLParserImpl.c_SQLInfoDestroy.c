
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int keep; } ;
struct TYPE_9__ {int pTagVals; } ;
struct TYPE_8__ {int pTagColumns; int pColumns; } ;
struct TYPE_12__ {scalar_t__ nAlloc; TYPE_3__ dbOpt; int a; int pAddColumns; int varList; TYPE_2__ usingInfo; TYPE_1__ colInfo; int pSelect; } ;
struct TYPE_11__ {scalar_t__ sqlType; TYPE_5__* pDCLInfo; TYPE_5__* pAlterInfo; TYPE_5__* pCreateTableInfo; int pQueryInfo; } ;
typedef TYPE_4__ SSqlInfo ;
typedef TYPE_5__ SCreateTableSQL ;


 scalar_t__ ALTER_TABLE_DROP_COLUMN ;
 scalar_t__ ALTER_TABLE_TAGS_ADD ;
 scalar_t__ CREATE_DATABASE ;
 scalar_t__ TSQL_CREATE_NORMAL_METER ;
 scalar_t__ TSQL_CREATE_STREAM ;
 scalar_t__ TSQL_QUERY_METER ;
 int destroyQuerySql (int ) ;
 int free (int ) ;
 int tFieldListDestroy (int ) ;
 int tVariantListDestroy (int ) ;
 int tfree (TYPE_5__*) ;

void SQLInfoDestroy(SSqlInfo *pInfo) {
  if (pInfo == ((void*)0)) return;

  if (pInfo->sqlType == TSQL_QUERY_METER) {
    destroyQuerySql(pInfo->pQueryInfo);
  } else if (pInfo->sqlType >= TSQL_CREATE_NORMAL_METER && pInfo->sqlType <= TSQL_CREATE_STREAM) {
    SCreateTableSQL *pCreateTableInfo = pInfo->pCreateTableInfo;
    destroyQuerySql(pCreateTableInfo->pSelect);

    tFieldListDestroy(pCreateTableInfo->colInfo.pColumns);
    tFieldListDestroy(pCreateTableInfo->colInfo.pTagColumns);

    tVariantListDestroy(pCreateTableInfo->usingInfo.pTagVals);
    tfree(pInfo->pCreateTableInfo);
  } else if (pInfo->sqlType >= ALTER_TABLE_TAGS_ADD && pInfo->sqlType <= ALTER_TABLE_DROP_COLUMN) {
    tVariantListDestroy(pInfo->pAlterInfo->varList);
    tFieldListDestroy(pInfo->pAlterInfo->pAddColumns);
    tfree(pInfo->pAlterInfo);
  } else {
    if (pInfo->pDCLInfo != ((void*)0) && pInfo->pDCLInfo->nAlloc > 0) {
      free(pInfo->pDCLInfo->a);
    }

    if (pInfo->sqlType == CREATE_DATABASE) {
      tVariantListDestroy(pInfo->pDCLInfo->dbOpt.keep);
    }

    tfree(pInfo->pDCLInfo);
  }
}
