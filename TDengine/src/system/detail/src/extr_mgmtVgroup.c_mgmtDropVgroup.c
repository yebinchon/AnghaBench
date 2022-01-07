
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int maxSessions; } ;
struct TYPE_13__ {int name; TYPE_1__ cfg; } ;
struct TYPE_12__ {int meterId; } ;
struct TYPE_11__ {scalar_t__ numOfMeters; int numOfVnodes; int vgId; TYPE_3__** meterList; } ;
typedef TYPE_2__ SVgObj ;
typedef TYPE_3__ STabObj ;
typedef TYPE_4__ SDbObj ;


 int mTrace (char*,int ,int ,int ) ;
 int mgmtDropMeter (TYPE_4__*,int ,int ) ;
 int mgmtSendFreeVnodeMsg (TYPE_2__*) ;
 int sdbDeleteRow (int ,TYPE_2__*) ;
 int vgSdb ;

int mgmtDropVgroup(SDbObj *pDb, SVgObj *pVgroup) {
  STabObj *pMeter;

  if (pVgroup->numOfMeters > 0) {
    for (int i = 0; i < pDb->cfg.maxSessions; ++i) {
      if (pVgroup->meterList != ((void*)0)) {
        pMeter = pVgroup->meterList[i];
        if (pMeter) mgmtDropMeter(pDb, pMeter->meterId, 0);
      }
    }
  }

  mTrace("vgroup:%d, db:%s replica:%d is deleted", pVgroup->vgId, pDb->name, pVgroup->numOfVnodes);
  mgmtSendFreeVnodeMsg(pVgroup);
  sdbDeleteRow(vgSdb, pVgroup);

  return 0;
}
