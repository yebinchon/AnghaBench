
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int thandle; TYPE_1__* pUser; } ;
struct TYPE_7__ {int db; } ;
struct TYPE_6__ {int user; } ;
typedef TYPE_2__ SUseDbMsg ;
typedef TYPE_3__ SConnObj ;


 int TSDB_MSG_TYPE_USE_DB_RSP ;
 int mTrace (char*,int ,int ) ;
 int mgmtUseDb (TYPE_3__*,int ) ;
 int taosSendSimpleRsp (int ,int ,int) ;

int mgmtProcessUseDbMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  SUseDbMsg *pUse = (SUseDbMsg *)pMsg;
  int code;

  code = mgmtUseDb(pConn, pUse->db);
  if (code == 0) mTrace("DB is change to:%s by %s", pUse->db, pConn->pUser->user);

  taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_USE_DB_RSP, code);

  return 0;
}
