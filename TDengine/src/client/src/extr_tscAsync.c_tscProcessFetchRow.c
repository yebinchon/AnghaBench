
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ ahandle; } ;
struct TYPE_11__ {int numOfCols; int order; } ;
struct TYPE_9__ {int* bytes; int row; scalar_t__* tsrow; } ;
struct TYPE_10__ {int param; int (* fetchFp ) (int ,TYPE_2__*,scalar_t__*) ;TYPE_3__ cmd; TYPE_1__ res; } ;
typedef TYPE_1__ SSqlRes ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SSchedMsg ;


 scalar_t__ TSC_GET_RESPTR_BASE (TYPE_1__*,TYPE_3__*,int,int ) ;
 int stub1 (int ,TYPE_2__*,scalar_t__*) ;

void tscProcessFetchRow(SSchedMsg *pMsg) {
  SSqlObj *pSql = (SSqlObj *)pMsg->ahandle;
  SSqlRes *pRes = &pSql->res;
  SSqlCmd *pCmd = &pSql->cmd;

  for (int i = 0; i < pCmd->numOfCols; ++i)
    pRes->tsrow[i] = TSC_GET_RESPTR_BASE(pRes, pCmd, i, pCmd->order) + pRes->bytes[i] * pRes->row;
  pRes->row++;

  (*pSql->fetchFp)(pSql->param, pSql, pRes->tsrow);
}
