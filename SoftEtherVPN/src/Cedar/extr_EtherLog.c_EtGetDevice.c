
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int a ;
typedef int UINT ;
struct TYPE_11__ {int DeviceList; } ;
struct TYPE_10__ {int NoPromiscuous; int LogSetting; int DeviceName; } ;
struct TYPE_9__ {int NoPromiscuous; int LogSetting; int DeviceName; } ;
typedef TYPE_1__ RPC_ADD_DEVICE ;
typedef int HUB_LOG ;
typedef TYPE_2__ EL_DEVICE ;
typedef TYPE_3__ EL ;


 int Copy (int *,int *,int) ;
 int ERR_CAPTURE_NOT_FOUND ;
 int ERR_NO_ERROR ;
 int LockList (int ) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_2__*,int) ;

UINT EtGetDevice(EL *e, RPC_ADD_DEVICE *t)
{
 UINT ret = ERR_CAPTURE_NOT_FOUND;

 LockList(e->DeviceList);
 {
  EL_DEVICE *d, a;
  Zero(&a, sizeof(a));
  StrCpy(a.DeviceName, sizeof(a.DeviceName), t->DeviceName);

  d = Search(e->DeviceList, &a);

  if (d != ((void*)0))
  {
   ret = ERR_NO_ERROR;

   Copy(&t->LogSetting, &d->LogSetting, sizeof(HUB_LOG));
   t->NoPromiscuous = d->NoPromiscuous;
  }
 }
 UnlockList(e->DeviceList);

 return ret;
}
