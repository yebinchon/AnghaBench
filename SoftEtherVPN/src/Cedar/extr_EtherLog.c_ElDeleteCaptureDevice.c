
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int t ;
struct TYPE_10__ {int DeviceList; } ;
struct TYPE_9__ {int Halt; int Thread; int Cancel1; int DeviceName; } ;
typedef TYPE_1__ EL_DEVICE ;
typedef TYPE_2__ EL ;


 int Cancel (int ) ;
 int Delete (int ,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 int INFINITE ;
 int LockList (int ) ;
 int ReleaseThread (int ) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int StrCpy (int ,int,char*) ;
 int UnlockList (int ) ;
 int WaitThread (int ,int ) ;
 int Zero (TYPE_1__*,int) ;

bool ElDeleteCaptureDevice(EL *e, char *name)
{
 bool ret = 0;
 EL_DEVICE *d, t;

 if (e == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 LockList(e->DeviceList);
 {
  Zero(&t, sizeof(t));
  StrCpy(t.DeviceName, sizeof(t.DeviceName), name);

  d = Search(e->DeviceList, &t);

  if (d != ((void*)0))
  {

   d->Halt = 1;
   Cancel(d->Cancel1);


   WaitThread(d->Thread, INFINITE);
   ReleaseThread(d->Thread);


   Delete(e->DeviceList, d);
   Free(d);

   ret = 1;
  }
 }
 UnlockList(e->DeviceList);

 return ret;
}
