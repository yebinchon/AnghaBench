
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int * DeviceList; int CfgRw; } ;
struct TYPE_6__ {int DeviceName; } ;
typedef int LIST ;
typedef TYPE_1__ EL_DEVICE ;
typedef TYPE_2__ EL ;


 int CopyStr (int ) ;
 int ElDeleteCaptureDevice (TYPE_2__*,char*) ;
 int ElSaveConfig (TYPE_2__*) ;
 int Free (char*) ;
 int FreeCfgRw (int ) ;
 int Insert (int *,int ) ;
 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int * NewList (int *) ;
 int ReleaseList (int *) ;
 int UnlockList (int *) ;

void ElFreeConfig(EL *e)
{
 UINT i;
 LIST *o;

 if (e == ((void*)0))
 {
  return;
 }


 ElSaveConfig(e);
 FreeCfgRw(e->CfgRw);


 o = NewList(((void*)0));
 LockList(e->DeviceList);
 {
  for (i = 0;i < LIST_NUM(e->DeviceList);i++)
  {
   EL_DEVICE *d = LIST_DATA(e->DeviceList, i);
   Insert(o, CopyStr(d->DeviceName));
  }
  for (i = 0;i < LIST_NUM(o);i++)
  {
   char *name = LIST_DATA(o, i);
   ElDeleteCaptureDevice(e, name);
   Free(name);
  }
  ReleaseList(o);
 }
 UnlockList(e->DeviceList);

 ReleaseList(e->DeviceList);
}
