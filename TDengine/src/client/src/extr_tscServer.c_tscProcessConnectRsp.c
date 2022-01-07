
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_14__ {int numOfIps; int * ip; int * ipstr; } ;
struct TYPE_13__ {char* acctId; char* version; int superAuth; int writeAuth; } ;
struct TYPE_12__ {int numOfIps; int * ip; } ;
struct TYPE_10__ {char* pRsp; } ;
struct TYPE_11__ {TYPE_2__ res; TYPE_1__* pTscObj; } ;
struct TYPE_9__ {char* acctId; char* db; char* sversion; int pTimer; int superAuth; int writeAuth; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;
typedef TYPE_4__ SIpList ;
typedef TYPE_5__ SConnectRsp ;


 int TSDB_METER_ID_LEN ;
 char* TS_PATH_DELIMITER ;
 int sprintf (char*,char*,char*,char*,char*) ;
 int strcpy (char*,char*) ;
 int taosTmrReset (int ,int,TYPE_1__*,int ,int *) ;
 int tinet_ntoa (int ,int ) ;
 int tsShellActivityTimer ;
 TYPE_7__ tscMgmtIpList ;
 int tscPrintMgmtIp () ;
 int tscProcessActivityTimer ;
 int tscTmr ;

int tscProcessConnectRsp(SSqlObj *pSql) {
  char temp[TSDB_METER_ID_LEN];
  SConnectRsp *pConnect;

  STscObj *pObj = pSql->pTscObj;
  SSqlRes *pRes = &pSql->res;

  pConnect = (SConnectRsp *)pRes->pRsp;
  strcpy(pObj->acctId, pConnect->acctId);
  sprintf(temp, "%s%s%s", pObj->acctId, TS_PATH_DELIMITER, pObj->db);
  strcpy(pObj->db, temp);
  strcpy(pObj->sversion, pConnect->version);
  pObj->writeAuth = pConnect->writeAuth;
  pObj->superAuth = pConnect->superAuth;
  taosTmrReset(tscProcessActivityTimer, tsShellActivityTimer * 500, pObj, tscTmr, &pObj->pTimer);

  return 0;
}
