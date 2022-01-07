
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {void* compress; int useconds; int offset; void* precision; int numOfRows; } ;
struct TYPE_16__ {int type; } ;
struct TYPE_14__ {scalar_t__ numOfRows; scalar_t__ offset; scalar_t__ row; void* useconds; void* precision; scalar_t__ pRsp; } ;
struct TYPE_15__ {int * thandle; int vnode; int ip; TYPE_1__* pTscObj; TYPE_4__ cmd; TYPE_2__ res; } ;
struct TYPE_13__ {int user; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ SSqlCmd ;
typedef TYPE_5__ SRetrieveMeterRsp ;


 int TSDB_QUERY_TYPE_FREE_RESOURCE ;
 int doDecompressPayload (TYPE_4__*,TYPE_2__*,void*) ;
 void* htobe64 (int ) ;
 scalar_t__ htonl (int ) ;
 void* htons (void*) ;
 int taosAddConnIntoCache (int ,int *,int ,int ,int ) ;
 int tscConnCache ;
 scalar_t__ tscProjectionQueryOnMetric (TYPE_4__*) ;
 int tscSetResultPointer (TYPE_4__*,TYPE_2__*) ;
 int tscTrace (char*,TYPE_3__*,scalar_t__,scalar_t__) ;

int tscProcessRetrieveRspFromVnode(SSqlObj *pSql) {
  SSqlRes *pRes = &pSql->res;
  SSqlCmd *pCmd = &pSql->cmd;
  STscObj *pObj = pSql->pTscObj;

  SRetrieveMeterRsp *pRetrieve = (SRetrieveMeterRsp *)pRes->pRsp;

  pRes->numOfRows = htonl(pRetrieve->numOfRows);
  pRes->precision = htons(pRetrieve->precision);
  pRes->offset = htobe64(pRetrieve->offset);

  pRes->useconds = htobe64(pRetrieve->useconds);
  pRetrieve->compress = htons(pRetrieve->compress);

  doDecompressPayload(pCmd, pRes, pRetrieve->compress);

  tscSetResultPointer(pCmd, pRes);
  pRes->row = 0;





  if ((pRes->numOfRows == 0 && !(tscProjectionQueryOnMetric(pCmd) && pRes->offset > 0)) ||
      ((pCmd->type & TSDB_QUERY_TYPE_FREE_RESOURCE) == TSDB_QUERY_TYPE_FREE_RESOURCE)) {
    taosAddConnIntoCache(tscConnCache, pSql->thandle, pSql->ip, pSql->vnode, pObj->user);
    pSql->thandle = ((void*)0);
  } else {
    tscTrace("%p numOfRows:%d, offset:%d, not recycle connection", pSql, pRes->numOfRows, pRes->offset);
  }

  return 0;
}
