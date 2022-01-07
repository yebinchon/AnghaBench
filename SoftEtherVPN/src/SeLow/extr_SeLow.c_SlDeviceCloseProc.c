
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int filter ;
typedef int UINT ;
struct TYPE_24__ {int NumPendingOidRequests; scalar_t__ Halt; } ;
struct TYPE_23__ {scalar_t__ DeviceExtension; } ;
struct TYPE_22__ {TYPE_1__* FileObject; } ;
struct TYPE_18__ {int Status; } ;
struct TYPE_21__ {TYPE_2__ IoStatus; } ;
struct TYPE_20__ {TYPE_9__* Adapter; int OpenCloseLock; int FileList; scalar_t__ IsBasicDevice; } ;
struct TYPE_19__ {scalar_t__ NumSendingPackets; int RecvLock; int NetBufferListPool; struct TYPE_19__* Next; struct TYPE_19__* RecvPacketHead; int Event; } ;
struct TYPE_17__ {TYPE_3__* FsContext; } ;
typedef TYPE_3__ SL_PACKET ;
typedef TYPE_3__ SL_FILE ;
typedef TYPE_5__ SL_DEVICE ;
typedef int NTSTATUS ;
typedef TYPE_6__ IRP ;
typedef TYPE_7__ IO_STACK_LOCATION ;
typedef TYPE_8__ DEVICE_OBJECT ;


 int IO_NO_INCREMENT ;
 int InterlockedDecrement (int *) ;
 int InterlockedIncrement (int *) ;
 int IoCompleteRequest (TYPE_6__*,int ) ;
 TYPE_7__* IoGetCurrentIrpStackLocation (TYPE_6__*) ;
 int NdisFreeNetBufferListPool (int ) ;
 int OID_GEN_CURRENT_PACKET_FILTER ;
 scalar_t__ SL_LIST_NUM (int ) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int SlDelete (int ,TYPE_3__*) ;
 int SlFree (TYPE_3__*) ;
 int SlFreeEvent (int ) ;
 int SlFreeLock (int ) ;
 int SlLock (int ) ;
 int SlLockList (int ) ;
 int SlSendOidRequest (TYPE_9__*,int,int ,int *,int) ;
 int SlSleep (int) ;
 int SlUnlock (int ) ;
 int SlUnlockList (int ) ;

NTSTATUS SlDeviceCloseProc(DEVICE_OBJECT *device_object, IRP *irp)
{
 SL_DEVICE *dev = *((SL_DEVICE **)device_object->DeviceExtension);
 NTSTATUS ret = STATUS_UNSUCCESSFUL;
 IO_STACK_LOCATION *irp_stack = IoGetCurrentIrpStackLocation(irp);

 if (dev->IsBasicDevice)
 {

  ret = STATUS_SUCCESS;
 }
 else
 {

  SL_FILE *f = irp_stack->FileObject->FsContext;

  if (f != ((void*)0))
  {
   bool clear_filter = 0;


   while (1)
   {
    if (f->NumSendingPackets == 0)
    {
     break;
    }

    SlSleep(50);
   }

   SlLock(dev->OpenCloseLock);
   {

    SlLockList(dev->FileList);
    {
     SlDelete(dev->FileList, f);

     if (SL_LIST_NUM(dev->FileList) == 0)
     {

      clear_filter = 1;
     }
    }
    SlUnlockList(dev->FileList);

    if (dev->Adapter->Halt)
    {
     clear_filter = 0;
    }

    if (clear_filter)
    {
     InterlockedIncrement(&dev->Adapter->NumPendingOidRequests);
    }
   }
   SlUnlock(dev->OpenCloseLock);

   if (clear_filter)
   {

    UINT filter = 0;
    SlSendOidRequest(dev->Adapter, 1, OID_GEN_CURRENT_PACKET_FILTER, &filter, sizeof(filter));
    InterlockedDecrement(&dev->Adapter->NumPendingOidRequests);
   }


   SlFreeEvent(f->Event);


   if (1)
   {
    SL_PACKET *p = f->RecvPacketHead;

    while (p != ((void*)0))
    {
     SL_PACKET *p_next = p->Next;

     SlFree(p);

     p = p_next;
    }
   }


   NdisFreeNetBufferListPool(f->NetBufferListPool);


   SlFreeLock(f->RecvLock);

   SlFree(f);

   ret = STATUS_SUCCESS;
  }
 }

 irp->IoStatus.Status = ret;
 IoCompleteRequest(irp, IO_NO_INCREMENT);

 return ret;
}
