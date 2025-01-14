
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_11__ {int type; int numOfCols; int meterId; TYPE_1__* schema; } ;
struct TYPE_10__ {int thandle; TYPE_2__* pUser; scalar_t__ pDb; int writeAuth; } ;
struct TYPE_9__ {int user; } ;
struct TYPE_8__ {int bytes; } ;
typedef TYPE_3__ SConnObj ;
typedef TYPE_4__ SAlterTableMsg ;


 int TSDB_CODE_APP_ERROR ;
 int TSDB_CODE_DB_NOT_SELECTED ;
 int TSDB_CODE_NO_RIGHTS ;
 int TSDB_MSG_TYPE_ALTER_TABLE_RSP ;
 void* htons (int) ;
 int mError (char*,int ,int) ;
 int mLPrint (char*,int ,int ) ;
 int mgmtAlterMeter (scalar_t__,TYPE_4__*) ;
 scalar_t__ mgmtCheckRedirectMsg (TYPE_3__*,int ) ;
 int taosSendSimpleRsp (int ,int ,int) ;

int mgmtProcessAlterTableMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  SAlterTableMsg *pAlter = (SAlterTableMsg *)pMsg;
  int code;

  if (mgmtCheckRedirectMsg(pConn, TSDB_MSG_TYPE_ALTER_TABLE_RSP) != 0) {
    return 0;
  }

  if (!pConn->writeAuth) {
    code = TSDB_CODE_NO_RIGHTS;
  } else {
    pAlter->type = htons(pAlter->type);
    pAlter->numOfCols = htons(pAlter->numOfCols);

    if (pAlter->numOfCols > 2) {
      mError("meter:%s error numOfCols:%d in alter table", pAlter->meterId, pAlter->numOfCols);
      code = TSDB_CODE_APP_ERROR;
    } else {
      if (pConn->pDb) {
        for (int32_t i = 0; i < pAlter->numOfCols; ++i) {
          pAlter->schema[i].bytes = htons(pAlter->schema[i].bytes);
        }

        code = mgmtAlterMeter(pConn->pDb, pAlter);
        if (code == 0) {
          mLPrint("meter:%s is altered by %s", pAlter->meterId, pConn->pUser->user);
        }
      } else {
        code = TSDB_CODE_DB_NOT_SELECTED;
      }
    }
  }

  taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_ALTER_TABLE_RSP, code);

  return 0;
}
