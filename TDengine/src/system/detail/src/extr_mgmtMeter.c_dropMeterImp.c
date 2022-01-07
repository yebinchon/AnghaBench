
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int numOfTimeSeries; } ;
struct TYPE_17__ {TYPE_1__ acctInfo; } ;
struct TYPE_14__ {int vgId; } ;
struct TYPE_16__ {int numOfColumns; TYPE_2__ gid; } ;
struct TYPE_15__ {scalar_t__ numOfMeters; } ;
typedef TYPE_3__ SVgObj ;
typedef TYPE_4__ STabObj ;
typedef int SDbObj ;
typedef TYPE_5__ SAcctObj ;


 int TSDB_CODE_OTHERS ;
 int grantRestoreTimeSeries (int) ;
 int meterSdb ;
 int mgmtDropVgroup (int *,TYPE_3__*) ;
 TYPE_3__* mgmtGetVgroup (int ) ;
 int mgmtSendRemoveMeterMsgToDnode (TYPE_4__*,TYPE_3__*) ;
 int sdbDeleteRow (int ,TYPE_4__*) ;

__attribute__((used)) static int dropMeterImp(SDbObj *pDb, STabObj * pMeter, SAcctObj *pAcct) {
  SVgObj * pVgroup;

  if (pAcct != ((void*)0)) pAcct->acctInfo.numOfTimeSeries -= (pMeter->numOfColumns - 1);

  pVgroup = mgmtGetVgroup(pMeter->gid.vgId);
  if (pVgroup == ((void*)0)) return TSDB_CODE_OTHERS;

  grantRestoreTimeSeries(pMeter->numOfColumns - 1);
  mgmtSendRemoveMeterMsgToDnode(pMeter, pVgroup);
  sdbDeleteRow(meterSdb, pMeter);

  if (pVgroup->numOfMeters <= 0) mgmtDropVgroup(pDb, pVgroup);

  return 0;
}
