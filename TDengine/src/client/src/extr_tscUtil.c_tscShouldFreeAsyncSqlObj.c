
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_12__ {scalar_t__ nSize; } ;
struct TYPE_11__ {size_t command; scalar_t__ vnodeIdx; TYPE_5__* pDataBlocks; } ;
struct TYPE_8__ {scalar_t__ code; } ;
struct TYPE_10__ {TYPE_1__ res; TYPE_4__ cmd; int * pStream; TYPE_2__* pTscObj; int * fp; struct TYPE_10__* signature; } ;
struct TYPE_9__ {TYPE_3__* pSql; TYPE_3__* pHb; } ;
typedef TYPE_2__ STscObj ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ SSqlCmd ;
typedef TYPE_5__ SDataBlockList ;


 scalar_t__ TSDB_CODE_ACTION_IN_PROGRESS ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 size_t TSDB_SQL_CONNECT ;
 size_t TSDB_SQL_INSERT ;
 scalar_t__* tscKeepConn ;
 int tscTrace (char*,TYPE_3__*) ;

bool tscShouldFreeAsyncSqlObj(SSqlObj* pSql) {
  if (pSql == ((void*)0) || pSql->signature != pSql || pSql->fp == ((void*)0)) {
    return 0;
  }

  STscObj* pTscObj = pSql->pTscObj;
  if (pSql->pStream != ((void*)0) || pTscObj->pHb == pSql) {
    return 0;
  }

  int32_t command = pSql->cmd.command;
  if (pTscObj->pSql == pSql) {




    if (command == TSDB_SQL_CONNECT && pSql->res.code != TSDB_CODE_SUCCESS) {
      return 1;
    }

    return 0;
  }

  if (command == TSDB_SQL_INSERT) {
    SSqlCmd* pCmd = &pSql->cmd;





    SDataBlockList* pDataBlocks = pCmd->pDataBlocks;
    if (pDataBlocks == ((void*)0) || pCmd->vnodeIdx >= pDataBlocks->nSize) {
      tscTrace("%p object should be release since all data blocks have been submit", pSql);
      return 1;
    } else {
      return 0;
    }
  } else {
    return tscKeepConn[command] == 0 ||
           (pSql->res.code != TSDB_CODE_ACTION_IN_PROGRESS && pSql->res.code != TSDB_CODE_SUCCESS);
  }
}
