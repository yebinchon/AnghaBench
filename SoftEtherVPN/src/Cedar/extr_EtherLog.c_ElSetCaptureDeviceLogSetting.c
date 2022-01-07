
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int t ;
struct TYPE_12__ {int DeviceList; } ;
struct TYPE_11__ {int Logger; int LogSetting; int DeviceName; } ;
struct TYPE_10__ {int PacketLogSwitchType; } ;
typedef TYPE_1__ HUB_LOG ;
typedef TYPE_2__ EL_DEVICE ;
typedef TYPE_3__ EL ;


 int Copy (int *,TYPE_1__*,int) ;
 int LockList (int ) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 int SetLogSwitchType (int ,int ) ;
 int StrCpy (int ,int,char*) ;
 int UnlockList (int ) ;
 int Zero (TYPE_2__*,int) ;

bool ElSetCaptureDeviceLogSetting(EL *e, char *name, HUB_LOG *log)
{
 EL_DEVICE *d;
 bool ret = 0;

 if (e == ((void*)0) || log == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 LockList(e->DeviceList);
 {
  EL_DEVICE t;

  Zero(&t, sizeof(t));
  StrCpy(t.DeviceName, sizeof(t.DeviceName), name);

  d = Search(e->DeviceList, &t);

  if (d != ((void*)0))
  {
   Copy(&d->LogSetting, log, sizeof(HUB_LOG));

   SetLogSwitchType(d->Logger, log->PacketLogSwitchType);

   ret = 1;
  }
 }
 UnlockList(e->DeviceList);

 return ret;
}
