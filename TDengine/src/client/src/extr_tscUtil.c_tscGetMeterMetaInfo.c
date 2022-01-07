
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_3__ {size_t numOfTables; int ** pMeterInfo; } ;
typedef TYPE_1__ SSqlCmd ;
typedef int SMeterMetaInfo ;



SMeterMetaInfo* tscGetMeterMetaInfo(SSqlCmd* pCmd, int32_t index) {
  if (pCmd == ((void*)0) || index >= pCmd->numOfTables || index < 0) {
    return ((void*)0);
  }

  return pCmd->pMeterInfo[index];
}
