
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pHead; } ;
typedef TYPE_1__ STabObj ;
typedef int SDbObj ;
typedef int SAcctObj ;


 int dropMeterImp (int *,TYPE_1__*,int *) ;

__attribute__((used)) static void dropAllMetersOfMetric(SDbObj *pDb, STabObj * pMetric, SAcctObj *pAcct) {
  STabObj * pMeter = ((void*)0);

  while ((pMeter = pMetric->pHead) != ((void*)0)) {
    (void)dropMeterImp(pDb, pMeter, pAcct);
  }
}
