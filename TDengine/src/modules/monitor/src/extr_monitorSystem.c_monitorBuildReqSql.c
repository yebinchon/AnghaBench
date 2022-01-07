
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int httpReqNum; int insertReqNum; int selectReqNum; } ;
typedef TYPE_1__ SCountInfo ;


 int monitorCountReqFp (TYPE_1__*) ;
 int sprintf (char*,char*,int,int,int) ;
 int stub1 (TYPE_1__*) ;

int monitorBuildReqSql(char *sql) {
  SCountInfo info;
  info.httpReqNum = info.insertReqNum = info.selectReqNum = 0;
  (*monitorCountReqFp)(&info);

  return sprintf(sql, ", %d, %d, %d)", info.httpReqNum, info.selectReqNum, info.insertReqNum);
}
