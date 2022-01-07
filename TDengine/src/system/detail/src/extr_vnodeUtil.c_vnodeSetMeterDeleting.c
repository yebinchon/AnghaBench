
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
typedef TYPE_1__ SMeterObj ;


 int TSDB_METER_STATE_DELETING ;

void vnodeSetMeterDeleting(SMeterObj* pMeterObj) {
  if (pMeterObj == ((void*)0)) {
    return;
  }

  pMeterObj->state |= TSDB_METER_STATE_DELETING;
}
