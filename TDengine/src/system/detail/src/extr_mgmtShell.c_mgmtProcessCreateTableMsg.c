
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int thandle; TYPE_1__* pUser; scalar_t__ pDb; int writeAuth; } ;
struct TYPE_10__ {int numOfColumns; int numOfTags; int sqlLen; int meterId; TYPE_2__* schema; } ;
struct TYPE_9__ {int bytes; int colId; } ;
struct TYPE_8__ {int user; } ;
typedef TYPE_2__ SSchema ;
typedef TYPE_3__ SCreateTableMsg ;
typedef TYPE_4__ SConnObj ;


 int TSDB_CODE_DB_NOT_SELECTED ;
 int TSDB_CODE_NO_RIGHTS ;
 int TSDB_MSG_TYPE_CREATE_TABLE_RSP ;
 void* htons (int) ;
 int mTrace (char*,int ,int ) ;
 scalar_t__ mgmtCheckRedirectMsg (TYPE_4__*,int ) ;
 int mgmtCreateMeter (scalar_t__,TYPE_3__*) ;
 int taosSendSimpleRsp (int ,int ,int) ;

int mgmtProcessCreateTableMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  SCreateTableMsg *pCreate = (SCreateTableMsg *)pMsg;
  int code;
  SSchema * pSchema;

  if (mgmtCheckRedirectMsg(pConn, TSDB_MSG_TYPE_CREATE_TABLE_RSP) != 0) {
    return 0;
  }

  if (!pConn->writeAuth) {
    code = TSDB_CODE_NO_RIGHTS;
  } else {
    pCreate->numOfColumns = htons(pCreate->numOfColumns);
    pCreate->numOfTags = htons(pCreate->numOfTags);

    pCreate->sqlLen = htons(pCreate->sqlLen);
    pSchema = pCreate->schema;
    for (int i = 0; i < pCreate->numOfColumns + pCreate->numOfTags; ++i) {
      pSchema->bytes = htons(pSchema->bytes);
      pSchema->colId = i;
      pSchema++;
    }

    if (pConn->pDb) {
      code = mgmtCreateMeter(pConn->pDb, pCreate);
      if (code == 0) {
        mTrace("meter:%s is created by %s", pCreate->meterId, pConn->pUser->user);

      }
    } else {
      code = TSDB_CODE_DB_NOT_SELECTED;
    }
  }

  taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_CREATE_TABLE_RSP, code);

  return 0;
}
