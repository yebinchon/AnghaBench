
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* defaultVal; } ;
struct TYPE_6__ {TYPE_1__ cmd; } ;
typedef TYPE_2__ SSqlObj ;


 int tscGetMeterMeta (TYPE_2__*,char*,int ) ;

int tscGetMeterMetaEx(SSqlObj *pSql, char *meterId, bool createIfNotExists) {
  pSql->cmd.defaultVal[0] = createIfNotExists ? 1 : 0;
  return tscGetMeterMeta(pSql, meterId, 0);
}
