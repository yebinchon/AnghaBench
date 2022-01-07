
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int t ;
struct TYPE_12__ {int DeviceList; } ;
struct TYPE_11__ {int NoPromiscuous; int Thread; TYPE_2__* el; int LogSetting; int DeviceName; } ;
typedef int HUB_LOG ;
typedef TYPE_1__ EL_DEVICE ;
typedef TYPE_2__ EL ;


 int Copy (int *,int *,int) ;
 int ElCaptureThread ;
 int ElSaveConfig (TYPE_2__*) ;
 int Insert (int ,TYPE_1__*) ;
 int LockList (int ) ;
 int NewThread (int ,TYPE_1__*) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int StrCpy (int ,int,char*) ;
 int UnlockList (int ) ;
 int WaitThreadInit (int ) ;
 int Zero (TYPE_1__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

bool ElAddCaptureDevice(EL *e, char *name, HUB_LOG *log, bool no_promiscuous)
{
 EL_DEVICE *d, t;

 if (e == ((void*)0) || name == ((void*)0) || log == ((void*)0))
 {
  return 0;
 }

 Zero(&t, sizeof(t));
 StrCpy(t.DeviceName, sizeof(t.DeviceName), name);

 LockList(e->DeviceList);
 {
  d = Search(e->DeviceList, &t);
  if (d != ((void*)0))
  {

   UnlockList(e->DeviceList);
   return 0;
  }


  d = ZeroMalloc(sizeof(EL_DEVICE));
  StrCpy(d->DeviceName, sizeof(d->DeviceName), name);
  Copy(&d->LogSetting, log, sizeof(HUB_LOG));
  d->NoPromiscuous = no_promiscuous;
  d->el = e;
  Insert(e->DeviceList, d);


  d->Thread = NewThread(ElCaptureThread, d);
  WaitThreadInit(d->Thread);
 }
 UnlockList(e->DeviceList);

 ElSaveConfig(e);

 return 1;
}
