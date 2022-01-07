
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_4__ {size_t numOfTables; int * pMeterInfo; } ;
typedef TYPE_1__ SSqlCmd ;
typedef int SMeterMetaInfo ;


 int free (int *) ;
 int memmove (int *,int *,size_t) ;
 int tscClearMeterMetaInfo (int *,int) ;
 int * tscGetMeterMetaInfo (TYPE_1__*,size_t) ;

void tscRemoveMeterMetaInfo(SSqlCmd* pCmd, int32_t index, bool removeFromCache) {
  if (index < 0 || index >= pCmd->numOfTables) {
    return;
  }

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, index);

  tscClearMeterMetaInfo(pMeterMetaInfo, removeFromCache);
  free(pMeterMetaInfo);

  int32_t after = pCmd->numOfTables - index - 1;
  if (after > 0) {
    memmove(&pCmd->pMeterInfo[index], &pCmd->pMeterInfo[index + 1], after * sizeof(void*));
  }

  pCmd->numOfTables -= 1;
}
