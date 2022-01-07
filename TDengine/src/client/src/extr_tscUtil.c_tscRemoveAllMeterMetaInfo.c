
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int pMeterInfo; int numOfTables; } ;
typedef TYPE_1__ SSqlCmd ;


 int SSqlObj ;
 int cmd ;
 int offsetof (int ,int ) ;
 int tfree (int ) ;
 int tscRemoveMeterMetaInfo (TYPE_1__*,int ,int) ;
 int tscTrace (char*,char*,int ) ;

void tscRemoveAllMeterMetaInfo(SSqlCmd* pCmd, bool removeFromCache) {
  int64_t addr = offsetof(SSqlObj, cmd);

  tscTrace("%p deref the metric/meter meta in cache, numOfTables:%d", ((char*)pCmd - addr), pCmd->numOfTables);

  while (pCmd->numOfTables > 0) {
    tscRemoveMeterMetaInfo(pCmd, pCmd->numOfTables - 1, removeFromCache);
  }

  tfree(pCmd->pMeterInfo);
}
