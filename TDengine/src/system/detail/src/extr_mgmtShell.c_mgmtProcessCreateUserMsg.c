
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int thandle; TYPE_1__* pUser; int pAcct; scalar_t__ superAuth; } ;
struct TYPE_7__ {int user; int pass; } ;
struct TYPE_6__ {int user; } ;
typedef TYPE_2__ SCreateUserMsg ;
typedef TYPE_3__ SConnObj ;


 int TSDB_CODE_NO_RIGHTS ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_MSG_TYPE_CREATE_USER_RSP ;
 int mLPrint (char*,int ,int ) ;
 scalar_t__ mgmtCheckRedirectMsg (TYPE_3__*,int ) ;
 int mgmtCreateUser (int ,int ,int ) ;
 int taosSendSimpleRsp (int ,int ,int) ;

int mgmtProcessCreateUserMsg(char *pMsg, int msgLen, SConnObj *pConn) {
  SCreateUserMsg *pCreate = (SCreateUserMsg *)pMsg;
  int code = 0;

  if (mgmtCheckRedirectMsg(pConn, TSDB_MSG_TYPE_CREATE_USER_RSP) != 0) {
    return 0;
  }

  if (pConn->superAuth) {
    code = mgmtCreateUser(pConn->pAcct, pCreate->user, pCreate->pass);
    if (code == TSDB_CODE_SUCCESS) {
      mLPrint("user:%s is created by %s", pCreate->user, pConn->pUser->user);
    }
  } else {
    code = TSDB_CODE_NO_RIGHTS;
  }

  taosSendSimpleRsp(pConn->thandle, TSDB_MSG_TYPE_CREATE_USER_RSP, code);

  return 0;
}
