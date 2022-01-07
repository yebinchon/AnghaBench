
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_3__ {scalar_t__ numOfQueries; int meterId; int sid; int vnode; } ;
typedef int SQueryMeterMsg ;
typedef TYPE_1__ SMeterObj ;


 int atomic_fetch_sub_32 (scalar_t__*,int) ;
 int dTrace (char*,int *,size_t,size_t,...) ;

void vnodeDecQueryRefCount(SQueryMeterMsg* pQueryMsg, SMeterObj** pMeterObjList, int32_t numOfInc) {
  int32_t num = 0;

  for (int32_t i = 0; i < numOfInc; ++i) {
    SMeterObj* pMeter = pMeterObjList[i];

    if (pMeter != ((void*)0)) {
      atomic_fetch_sub_32(&pMeter->numOfQueries, 1);

      if (pMeter->numOfQueries > 0) {
        dTrace("qmsg:%p, vid:%d sid:%d id:%s dec query ref, numOfQueries:%d", pQueryMsg, pMeter->vnode, pMeter->sid,
               pMeter->meterId, pMeter->numOfQueries);
        num++;
      }
    }
  }

  dTrace("qmsg:%p, dec query ref for %d meters, numOfQueries on %d meters are 0", pQueryMsg, numOfInc, numOfInc - num);
}
