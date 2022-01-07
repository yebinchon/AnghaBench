
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vgStatus; int * vgTimer; int name; } ;
typedef TYPE_1__ SDbObj ;


 scalar_t__ TSDB_VG_STATUS_IN_PROGRESS ;
 scalar_t__ TSDB_VG_STATUS_READY ;
 int mTrace (char*,int ,scalar_t__,scalar_t__) ;

void mgmtProcessVgTimer(void *handle, void *tmrId) {
  SDbObj *pDb = (SDbObj *)handle;
  if (pDb == ((void*)0)) return;

  if (pDb->vgStatus > TSDB_VG_STATUS_IN_PROGRESS) {
    mTrace("db:%s, set vgstatus from %d to %d", pDb->name, pDb->vgStatus, TSDB_VG_STATUS_READY);
    pDb->vgStatus = TSDB_VG_STATUS_READY;
  }

  pDb->vgTimer = ((void*)0);
}
