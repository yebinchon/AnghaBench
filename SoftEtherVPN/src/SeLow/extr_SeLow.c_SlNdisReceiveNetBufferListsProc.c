
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int USHORT ;
typedef scalar_t__ ULONG ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_9__ {int VlanId; int UserPriority; int CanonicalFormatId; } ;
struct TYPE_14__ {TYPE_1__ TagHeader; scalar_t__ Value; } ;
struct TYPE_13__ {int Halt; int Ready; int SupportVLan; int * AdapterHandle2; TYPE_2__* Device; int * TmpBuffer; int * AdapterHandle; } ;
struct TYPE_12__ {scalar_t__ NumRecvPackets; int Event; int RecvLock; TYPE_3__* RecvPacketTail; TYPE_3__* RecvPacketHead; } ;
struct TYPE_11__ {int* Data; struct TYPE_11__* Next; scalar_t__ Size; } ;
struct TYPE_10__ {int FileList; scalar_t__ Halting; } ;
typedef TYPE_3__ SL_PACKET ;
typedef TYPE_4__ SL_FILE ;
typedef TYPE_5__ SL_ADAPTER ;
typedef int NET_BUFFER_LIST ;
typedef int NET_BUFFER ;
typedef int NDIS_PORT_NUMBER ;
typedef TYPE_6__ NDIS_NET_BUFFER_LIST_8021Q_INFO ;
typedef scalar_t__ NDIS_HANDLE ;


 int Ieee8021QNetBufferListInfo ;
 int NDIS_RETURN_FLAGS_DISPATCH_LEVEL ;
 int NDIS_SET_RETURN_FLAG (scalar_t__,int ) ;
 scalar_t__ NDIS_TEST_RECEIVE_AT_DISPATCH_LEVEL (scalar_t__) ;
 scalar_t__ NDIS_TEST_RECEIVE_CAN_PEND (scalar_t__) ;
 scalar_t__ NET_BUFFER_DATA_LENGTH (int *) ;
 int * NET_BUFFER_LIST_FIRST_NB (int *) ;
 scalar_t__ NET_BUFFER_LIST_INFO (int *,int ) ;
 int * NET_BUFFER_LIST_NEXT_NBL (int *) ;
 int * NET_BUFFER_NEXT_NB (int *) ;
 int * NdisGetDataBuffer (int *,scalar_t__,int *,int,int ) ;
 int NdisReturnNetBufferLists (int *,int *,scalar_t__) ;
 TYPE_4__* SL_LIST_DATA (int ,scalar_t__) ;
 scalar_t__ SL_LIST_NUM (int ) ;
 scalar_t__ SL_MAX_PACKET_QUEUED ;
 int SL_MAX_PACKET_SIZE ;
 int SlCopy (int*,int *,scalar_t__) ;
 int SlLock (int ) ;
 int SlLockList (int ) ;
 TYPE_3__* SlMalloc (int) ;
 int SlSet (int ) ;
 int SlUnlock (int ) ;
 int SlUnlockList (int ) ;

void SlNdisReceiveNetBufferListsProc(NDIS_HANDLE protocol_binding_context, NET_BUFFER_LIST *net_buffer_lists,
          NDIS_PORT_NUMBER port_number, ULONG NumberOfNetBufferLists,
          ULONG receive_flags)
{
 SL_ADAPTER *a = (SL_ADAPTER *)protocol_binding_context;
 UINT i;
 UINT return_flags = 0;
 NET_BUFFER_LIST *nbl;
 UCHAR *tmp_buffer;
 UINT tmp_size;

 if (net_buffer_lists == ((void*)0) || NumberOfNetBufferLists == 0)
 {
  return;
 }

 if (a->AdapterHandle2 == ((void*)0))
 {
  a->AdapterHandle2 = a->AdapterHandle;
 }

 if (NDIS_TEST_RECEIVE_AT_DISPATCH_LEVEL(receive_flags))
 {
  NDIS_SET_RETURN_FLAG(return_flags, NDIS_RETURN_FLAGS_DISPATCH_LEVEL);
 }

 if (a->Halt || a->Device == ((void*)0) || a->Device->Halting || a->Ready == 0 || a->AdapterHandle == ((void*)0))
 {
  goto LABEL_CLEANUP;
 }

 tmp_buffer = a->TmpBuffer;
 tmp_size = sizeof(a->TmpBuffer);

 nbl = net_buffer_lists;

 SlLockList(a->Device->FileList);
 {
  if (a->Halt == 0)
  {
   for (i = 0;i < SL_LIST_NUM(a->Device->FileList);i++)
   {

    SL_FILE *f = SL_LIST_DATA(a->Device->FileList, i);

    SlLock(f->RecvLock);
   }

   while (nbl != ((void*)0))
   {
    NET_BUFFER *nb = NET_BUFFER_LIST_FIRST_NB(nbl);
    bool is_vlan = 0;
    UCHAR vlan_tag[2];

    if (NET_BUFFER_LIST_INFO(nbl, Ieee8021QNetBufferListInfo) != 0)
    {
     NDIS_NET_BUFFER_LIST_8021Q_INFO qinfo;
     qinfo.Value = NET_BUFFER_LIST_INFO(nbl, Ieee8021QNetBufferListInfo);
     if (qinfo.TagHeader.VlanId != 0)
     {
      USHORT tag_us;
      is_vlan = 1;

      a->SupportVLan = 1;

      tag_us = (qinfo.TagHeader.UserPriority & 0x07 << 13) |
       (qinfo.TagHeader.CanonicalFormatId & 0x01 << 12) |
       (qinfo.TagHeader.VlanId & 0x0FFF);

      vlan_tag[0] = ((UCHAR *)(&tag_us))[1];
      vlan_tag[1] = ((UCHAR *)(&tag_us))[0];
     }
    }

    while (nb != ((void*)0))
    {
     UINT size = NET_BUFFER_DATA_LENGTH(nb);

     if (size >= 14 && size <= tmp_size && size <= (UINT)((is_vlan == 0) ? SL_MAX_PACKET_SIZE : (SL_MAX_PACKET_SIZE - 4)))
     {
      UCHAR *ptr = NdisGetDataBuffer(nb, size, tmp_buffer, 1, 0);

      if (ptr != ((void*)0))
      {

       for (i = 0;i < SL_LIST_NUM(a->Device->FileList);i++)
       {
        SL_FILE *f = SL_LIST_DATA(a->Device->FileList, i);

        if (f->NumRecvPackets < SL_MAX_PACKET_QUEUED)
        {
         SL_PACKET *q = SlMalloc(sizeof(SL_PACKET));

         if (is_vlan == 0)
         {

          SlCopy(q->Data, ptr, size);
          q->Size = size;
         }
         else
         {

          SlCopy(q->Data, ptr, 12);
          q->Data[12] = 0x81;
          q->Data[13] = 0x00;
          SlCopy(&q->Data[14], vlan_tag, 2);
          SlCopy(&q->Data[16], &ptr[12], size - 12);

          q->Size = size + 4;
         }

         q->Next = ((void*)0);

         if (f->RecvPacketHead == ((void*)0))
         {
          f->RecvPacketHead = q;
         }
         else
         {
          f->RecvPacketTail->Next = q;
         }

         f->RecvPacketTail = q;

         f->NumRecvPackets++;
        }
       }
      }
     }

     nb = NET_BUFFER_NEXT_NB(nb);
    }

    nbl = NET_BUFFER_LIST_NEXT_NBL(nbl);
   }


   for (i = 0;i < SL_LIST_NUM(a->Device->FileList);i++)
   {
    SL_FILE *f = SL_LIST_DATA(a->Device->FileList, i);


    SlUnlock(f->RecvLock);

    SlSet(f->Event);
   }
  }
 }
 SlUnlockList(a->Device->FileList);

LABEL_CLEANUP:

 if (NDIS_TEST_RECEIVE_CAN_PEND(receive_flags))
 {
  NdisReturnNetBufferLists(a->AdapterHandle2, net_buffer_lists, return_flags);
 }
}
