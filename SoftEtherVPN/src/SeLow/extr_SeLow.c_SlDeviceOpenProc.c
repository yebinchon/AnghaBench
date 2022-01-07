
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_10__ ;


typedef int p ;
typedef int filter ;
typedef int UINT64 ;
typedef int UINT32 ;
typedef scalar_t__ UINT ;
struct TYPE_31__ {scalar_t__ DeviceExtension; } ;
struct TYPE_30__ {TYPE_1__* FileObject; } ;
struct TYPE_25__ {int Status; } ;
struct TYPE_29__ {TYPE_3__ IoStatus; } ;
struct TYPE_24__ {int Size; int Revision; int Type; } ;
struct TYPE_28__ {int fAllocateNetBuffer; int ContextSize; char PoolTag; int DataSize; int ProtocolId; TYPE_2__ Header; } ;
struct TYPE_27__ {int Halting; TYPE_13__* Adapter; int OpenCloseLock; int FileList; scalar_t__ IsBasicDevice; } ;
struct TYPE_26__ {int NetBufferListPool; int RecvLock; int EventNameWin32; int * Event; TYPE_1__* FileObject; TYPE_13__* Adapter; TYPE_5__* Device; } ;
struct TYPE_23__ {TYPE_4__* FsContext; } ;
struct TYPE_22__ {int Halt; scalar_t__ NumPendingOidRequests; scalar_t__ Ready; } ;
struct TYPE_21__ {scalar_t__ IntCounter1; } ;
typedef TYPE_4__ SL_FILE ;
typedef int SL_EVENT ;
typedef TYPE_5__ SL_DEVICE ;
typedef int NTSTATUS ;
typedef TYPE_6__ NET_BUFFER_LIST_POOL_PARAMETERS ;
typedef int LARGE_INTEGER ;
typedef TYPE_7__ IRP ;
typedef TYPE_8__ IO_STACK_LOCATION ;
typedef TYPE_9__ DEVICE_OBJECT ;


 int IO_NO_INCREMENT ;
 int InterlockedIncrement (scalar_t__*) ;
 int IoCompleteRequest (TYPE_7__*,int ) ;
 TYPE_8__* IoGetCurrentIrpStackLocation (TYPE_7__*) ;
 int KeQueryPerformanceCounter (int *) ;
 int NDIS_OBJECT_TYPE_DEFAULT ;
 scalar_t__ NDIS_PACKET_TYPE_PROMISCUOUS ;
 int NDIS_PROTOCOL_ID_DEFAULT ;
 int NDIS_SIZEOF_NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1 ;
 int NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1 ;
 int NdisAllocateNetBufferListPool (int *,TYPE_6__*) ;
 int OID_GEN_CURRENT_PACKET_FILTER ;
 char* SL_EVENT_NAME ;
 int SL_EVENT_NAME_SIZE ;
 char* SL_EVENT_NAME_WIN32 ;
 int SL_MAX_PACKET_SIZE ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int SlAdd (int ,TYPE_4__*) ;
 int SlFreeEvent (int *) ;
 int SlLock (int ) ;
 int SlLockList (int ) ;
 int * SlNewEvent (char*) ;
 int SlNewLock () ;
 int SlSendOidRequest (TYPE_13__*,int,int ,scalar_t__*,int) ;
 int SlSleep (int) ;
 int SlUnlock (int ) ;
 int SlUnlockList (int ) ;
 int SlZero (TYPE_6__*,int) ;
 TYPE_4__* SlZeroMalloc (int) ;
 TYPE_10__* sl ;
 int sprintf (char*,char*,scalar_t__,scalar_t__) ;
 int strcpy (int ,char*) ;

NTSTATUS SlDeviceOpenProc(DEVICE_OBJECT *device_object, IRP *irp)
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
  bool set_promisc = 0;
  volatile UINT *num_pending_oid_requests = ((void*)0);
  UINT64 v;
  char event_name[SL_EVENT_NAME_SIZE];
  char event_name_win32[SL_EVENT_NAME_SIZE];
  SL_EVENT *event_object = ((void*)0);
  LARGE_INTEGER count;
  LARGE_INTEGER freq;

  count = KeQueryPerformanceCounter(&freq);

  InterlockedIncrement(&sl->IntCounter1);


  v = (UINT64)device_object + (UINT64)(++sl->IntCounter1) + *((UINT64 *)(&count));
  sprintf(event_name, SL_EVENT_NAME, (UINT)v, (UINT)(v >> 32) + sl->IntCounter1);
  sprintf(event_name_win32, SL_EVENT_NAME_WIN32, (UINT)v, (UINT)(v >> 32) + sl->IntCounter1);
  event_object = SlNewEvent(event_name);

  SlLock(dev->OpenCloseLock);
  {

   SlLockList(dev->FileList);
   {
    if (dev->Halting == 0 && dev->Adapter != ((void*)0) && dev->Adapter->Ready && dev->Adapter->Halt == 0)
    {

     SL_FILE *f = SlZeroMalloc(sizeof(SL_FILE));
     NET_BUFFER_LIST_POOL_PARAMETERS p;

     f->Device = dev;
     f->Adapter = dev->Adapter;
     f->FileObject = irp_stack->FileObject;

     irp_stack->FileObject->FsContext = f;

     SlAdd(dev->FileList, f);

     ret = STATUS_SUCCESS;
     set_promisc = 1;


     f->Event = event_object;
     event_object = ((void*)0);
     strcpy(f->EventNameWin32, event_name_win32);


     f->RecvLock = SlNewLock();


     SlZero(&p, sizeof(p));
     p.Header.Type = NDIS_OBJECT_TYPE_DEFAULT;
     p.Header.Revision = NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1;
     p.Header.Size = NDIS_SIZEOF_NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1;
     p.ProtocolId = NDIS_PROTOCOL_ID_DEFAULT;
     p.fAllocateNetBuffer = 1;
     p.ContextSize = 32 + sizeof(UINT32) * 12;
     p.DataSize = SL_MAX_PACKET_SIZE;
     p.PoolTag = 'SETH';

     f->NetBufferListPool = NdisAllocateNetBufferListPool(((void*)0), &p);

     num_pending_oid_requests = &dev->Adapter->NumPendingOidRequests;
    }
   }
   SlUnlockList(dev->FileList);
  }
  SlUnlock(dev->OpenCloseLock);

  if (event_object != ((void*)0))
  {
   SlFreeEvent(event_object);
  }

  if (set_promisc)
  {

   UINT filter = NDIS_PACKET_TYPE_PROMISCUOUS;
   SlSendOidRequest(dev->Adapter, 1, OID_GEN_CURRENT_PACKET_FILTER, &filter, sizeof(filter));


   while ((*num_pending_oid_requests) != 0)
   {
    SlSleep(50);
   }
  }
 }

 irp->IoStatus.Status = ret;
 IoCompleteRequest(irp, IO_NO_INCREMENT);

 return ret;
}
