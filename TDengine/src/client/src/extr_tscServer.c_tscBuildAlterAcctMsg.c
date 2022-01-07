
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int msgType; } ;
struct TYPE_6__ {TYPE_1__ cmd; } ;
typedef TYPE_2__ SSqlObj ;


 int TSDB_MSG_TYPE_ALTER_ACCT ;
 int tscBuildAcctMsgImpl (TYPE_2__*) ;

int tscBuildAlterAcctMsg(SSqlObj *pSql) {
  int msgLen = tscBuildAcctMsgImpl(pSql);
  pSql->cmd.msgType = TSDB_MSG_TYPE_ALTER_ACCT;
  return msgLen;
}
