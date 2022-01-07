
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef size_t int32_t ;
struct TYPE_8__ {size_t numOfTables; TYPE_2__** pMeterInfo; } ;
struct TYPE_7__ {TYPE_1__* pMeterMeta; } ;
struct TYPE_6__ {scalar_t__ uid; } ;
typedef TYPE_3__ SSqlCmd ;
typedef int SMeterMetaInfo ;


 int * tscGetMeterMetaInfo (TYPE_3__*,size_t) ;

SMeterMetaInfo* tscGetMeterMetaInfoByUid(SSqlCmd* pCmd, uint64_t uid, int32_t* index) {
  int32_t k = -1;
  for (int32_t i = 0; i < pCmd->numOfTables; ++i) {
    if (pCmd->pMeterInfo[i]->pMeterMeta->uid == uid) {
      k = i;
      break;
    }
  }

  if (index != ((void*)0)) {
    *index = k;
  }

  return tscGetMeterMetaInfo(pCmd, k);
}
