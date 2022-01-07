
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_2__ {int meterId; int createFlag; } ;
typedef int STabObj ;
typedef TYPE_1__ SMeterInfoMsg ;


 int htons (int ) ;
 int mTrace (char*,int ) ;
 int * mgmtGetMeter (int ) ;

bool mgmtCheckMeterMetaMsgType(char *pMsg) {
  SMeterInfoMsg *pInfo = (SMeterInfoMsg *)pMsg;

  int16_t autoCreate = htons(pInfo->createFlag);
  STabObj *pMeterObj = mgmtGetMeter(pInfo->meterId);


  bool addIntoTranQueue = (pMeterObj == ((void*)0) && autoCreate == 1);
  if (addIntoTranQueue) {
    mTrace("meter:%s auto created task added", pInfo->meterId);
  }

  return addIntoTranQueue;
}
