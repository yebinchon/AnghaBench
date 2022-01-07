
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numOfGroups; } ;
struct TYPE_6__ {TYPE_1__ res; int cmd; } ;
typedef TYPE_1__ SSqlRes ;
typedef TYPE_2__ SSqlObj ;
typedef int SSqlCmd ;


 scalar_t__ reachGroupResultLimit (int *,TYPE_1__*) ;

__attribute__((used)) static bool saveGroupResultInfo(SSqlObj *pSql) {
  SSqlCmd *pCmd = &pSql->cmd;
  SSqlRes *pRes = &pSql->res;

  pRes->numOfGroups += 1;


  if (reachGroupResultLimit(pCmd, pRes)) {
    return 1;
  }





  return 0;
}
