
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int data; int numOfRows; } ;
struct TYPE_8__ {scalar_t__ numOfRows; scalar_t__ row; int data; int precision; scalar_t__ pRsp; } ;
struct TYPE_9__ {int * thandle; int vnode; int ip; TYPE_1__* pTscObj; int cmd; TYPE_2__ res; } ;
struct TYPE_7__ {int user; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;
typedef int SSqlCmd ;
typedef TYPE_4__ SRetrieveMeterRsp ;


 scalar_t__ htonl (int ) ;
 int htons (int ) ;
 int taosAddConnIntoCache (int ,int *,int ,int ,int ) ;
 int tscConnCache ;
 int tscSetResultPointer (int *,TYPE_2__*) ;

int tscProcessRetrieveRspFromMgmt(SSqlObj *pSql) {
  SSqlRes *pRes = &pSql->res;
  SSqlCmd *pCmd = &pSql->cmd;
  STscObj *pObj = pSql->pTscObj;

  SRetrieveMeterRsp *pRetrieve = (SRetrieveMeterRsp *)(pRes->pRsp);
  pRes->numOfRows = htonl(pRetrieve->numOfRows);
  pRes->precision = htons(pRes->precision);

  pRes->data = pRetrieve->data;

  tscSetResultPointer(pCmd, pRes);

  if (pRes->numOfRows == 0) {
    taosAddConnIntoCache(tscConnCache, pSql->thandle, pSql->ip, pSql->vnode, pObj->user);
    pSql->thandle = ((void*)0);
  }

  pRes->row = 0;
  return 0;
}
