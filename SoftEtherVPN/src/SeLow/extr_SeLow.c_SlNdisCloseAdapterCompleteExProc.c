
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {int Halting; int FileList; int OpenCloseLock; } ;
struct TYPE_9__ {int NumBoundAdapters; } ;
struct TYPE_8__ {int IsClosePending; TYPE_4__* Device; scalar_t__ UnbindContext; } ;
struct TYPE_7__ {int FinalWakeUp; int Event; } ;
typedef TYPE_1__ SL_FILE ;
typedef TYPE_2__ SL_ADAPTER ;
typedef scalar_t__ NDIS_HANDLE ;


 int InterlockedDecrement (int *) ;
 int NdisCompleteUnbindAdapterEx (scalar_t__) ;
 TYPE_1__* SL_LIST_DATA (int ,int) ;
 int SL_LIST_NUM (int ) ;
 int SlFreeAdapter (TYPE_2__*) ;
 int SlFreeDevice (TYPE_4__*) ;
 int SlFreeList (int ) ;
 int SlLock (int ) ;
 int SlLockList (int ) ;
 int SlSet (int ) ;
 int SlSleep (int) ;
 int SlUnlock (int ) ;
 int SlUnlockList (int ) ;
 TYPE_3__* sl ;

void SlNdisCloseAdapterCompleteExProc(NDIS_HANDLE protocol_binding_context)
{
 SL_ADAPTER *a = (SL_ADAPTER *)protocol_binding_context;
 NDIS_HANDLE unbind_context = a->UnbindContext;
 bool is_pending = a->IsClosePending;
 UINT j;

 if (is_pending)
 {
  NdisCompleteUnbindAdapterEx(unbind_context);
 }

 for (j = 0;j < 32;j++)
 {
  if (a->Device != ((void*)0))
  {
   a->Device->Halting = 1;


   while (1)
   {
    UINT num_files = 0;

    SlLock(a->Device->OpenCloseLock);
    {
     SlLockList(a->Device->FileList);
     {
      UINT i;
      num_files = SL_LIST_NUM(a->Device->FileList);

      for (i = 0;i < num_files;i++)
      {

       SL_FILE *f = SL_LIST_DATA(a->Device->FileList, i);

       if (f->FinalWakeUp == 0)
       {
        SlSet(f->Event);
        f->FinalWakeUp = 1;
       }
      }
     }
     SlUnlockList(a->Device->FileList);
    }
    SlUnlock(a->Device->OpenCloseLock);

    if (num_files == 0)
    {
     break;
    }

    SlSleep(50);
   }
  }
 }


 if (a->Device != ((void*)0))
 {

  SlFreeList(a->Device->FileList);

  SlFreeDevice(a->Device);
  a->Device = ((void*)0);
 }


 SlFreeAdapter(a);

 if (is_pending)
 {
  InterlockedDecrement(&sl->NumBoundAdapters);
 }
}
