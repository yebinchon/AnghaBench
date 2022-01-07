
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int data; int numOfRows; } ;
struct TYPE_6__ {scalar_t__ row; int data; int numOfRows; scalar_t__ pRsp; } ;
struct TYPE_7__ {int cmd; TYPE_1__ res; } ;
typedef TYPE_1__ SSqlRes ;
typedef TYPE_2__ SSqlObj ;
typedef int SSqlCmd ;
typedef TYPE_3__ SRetrieveMeterRsp ;


 int htonl (int ) ;
 int tscSetResultPointer (int *,TYPE_1__*) ;

int tscProcessRetrieveRspFromLocal(SSqlObj *pSql) {
  SSqlRes * pRes = &pSql->res;
  SSqlCmd * pCmd = &pSql->cmd;
  SRetrieveMeterRsp *pRetrieve = (SRetrieveMeterRsp *)pRes->pRsp;

  pRes->numOfRows = htonl(pRetrieve->numOfRows);
  pRes->data = pRetrieve->data;

  tscSetResultPointer(pCmd, pRes);
  pRes->row = 0;
  return 0;
}
