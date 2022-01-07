
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int numOfTimeSeries; } ;
struct TYPE_8__ {TYPE_1__ acctInfo; } ;
struct TYPE_7__ {int numOfColumns; } ;
typedef TYPE_2__ STabObj ;
typedef TYPE_3__ SAcctObj ;



void mgmtAddMeterStatisticToAcct(STabObj *pMeter, SAcctObj *pAcct) {
  pAcct->acctInfo.numOfTimeSeries += (pMeter->numOfColumns - 1);
}
