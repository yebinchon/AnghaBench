
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_21__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_33__ {scalar_t__ num_item; } ;
struct TYPE_32__ {int IsFlooding; int Size; } ;
struct TYPE_28__ {int Value; } ;
struct TYPE_31__ {int Cancel; TYPE_8__* PacketQueue; TYPE_4__* Session; TYPE_3__ DownloadLimiter; } ;
struct TYPE_30__ {int* MacAddressSrc; int PacketSize; int PacketData; } ;
struct TYPE_29__ {scalar_t__ VLanId; scalar_t__ AdjustMss; scalar_t__ UdpAccelMss; scalar_t__ RUdpMss; int CancelList; int Cedar; TYPE_21__* Hub; scalar_t__ IsRUDPSession; scalar_t__ IsUsingUdpAcceleration; int LastDLinkSTPPacketSendTick; int LastDLinkSTPPacketDataHash; TYPE_1__* Policy; } ;
struct TYPE_27__ {int VlanTypeId; int DisableAdjustTcpMss; scalar_t__ FixForDLinkBPDU; } ;
struct TYPE_26__ {TYPE_2__* Option; } ;
struct TYPE_25__ {int MaxDownload; scalar_t__ CheckMac; } ;
typedef TYPE_3__ TRAFFIC_LIMITER ;
typedef TYPE_4__ SESSION ;
typedef TYPE_5__ PKT ;
typedef TYPE_6__ HUB_PA ;
typedef TYPE_7__ BLOCK ;


 int AddCancelList (int ,int ) ;
 int AdjustTcpMssL2 (void*,int,int,int) ;
 int ApplyAccessListToForwardPacket (TYPE_21__*,TYPE_4__*,TYPE_4__*,TYPE_5__*) ;
 int Cancel (int ) ;
 int CedarAddCurrentTcpQueueSize (int ,int ) ;
 int Copy (int ,int*,int) ;
 int Free (void*) ;
 int FreeBlock (TYPE_7__*) ;
 int INFINITE ;
 int InsertQueue (TYPE_8__*,TYPE_7__*) ;
 int IntoTrafficLimiter (TYPE_3__*,TYPE_5__*) ;
 int IsMostHighestPriorityPacket (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ LIMITER_SAMPLING_SPAN ;
 int LockQueue (TYPE_8__*) ;
 scalar_t__ MAX_STORED_QUEUE_NUM ;
 int MD5_SIZE ;
 int MIN (int,scalar_t__) ;
 int Md5 (int*,int ,int ) ;
 TYPE_7__* NewBlock (void*,int,int ) ;
 int Tick64 () ;
 int UnlockQueue (TYPE_8__*) ;
 int VLanRemoveTag (void**,int*,scalar_t__,int) ;

void StorePacketToHubPa(HUB_PA *dest, SESSION *src, void *data, UINT size, PKT *packet, bool is_flooding, bool no_check_acl)
{
 BLOCK *b;

 if (dest == ((void*)0) || data == ((void*)0))
 {
  return;
 }

 if (size < 14)
 {
  Free(data);
  return;
 }

 if (no_check_acl == 0)
 {
  if (src != ((void*)0))
  {

   if (ApplyAccessListToForwardPacket(src->Hub, src, dest->Session, packet) == 0)
   {
    Free(data);
    return;
   }
  }
 }

 if (src != ((void*)0))
 {
  if (dest->Session->Policy->MaxDownload != 0)
  {

   if (packet != ((void*)0) && IsMostHighestPriorityPacket(dest->Session, packet) == 0)
   {
    TRAFFIC_LIMITER *tr = &dest->DownloadLimiter;
    IntoTrafficLimiter(tr, packet);

    if ((tr->Value * (UINT64)1000 / (UINT64)LIMITER_SAMPLING_SPAN) > dest->Session->Policy->MaxDownload)
    {

     Free(data);
     return;
    }
   }
  }
 }

 if (packet != ((void*)0) && src != ((void*)0) && src->Hub != ((void*)0) && src->Hub->Option != ((void*)0) && src->Hub->Option->FixForDLinkBPDU)
 {

  UCHAR *mac = packet->MacAddressSrc;
  if ((mac[0] == 0x00 && mac[1] == 0x80 && mac[2] == 0xc8 && mac[3] == 0x00 && mac[4] == 0x00 && mac[5] == 0x00) ||
   (mac[0] == 0x00 && mac[1] == 0x0d && mac[2] == 0x88 && mac[3] == 0x00 && mac[4] == 0x00 && mac[5] == 0x00))
  {
   SESSION *session = dest->Session;

   if (session != ((void*)0))
   {
    if (session->Policy != ((void*)0) && session->Policy->CheckMac)
    {
     UCHAR hash[MD5_SIZE];
     Md5(hash, packet->PacketData, packet->PacketSize);

     Copy(session->LastDLinkSTPPacketDataHash, hash, MD5_SIZE);
     session->LastDLinkSTPPacketSendTick = Tick64();
    }
   }
  }
 }


 if (dest->Session != ((void*)0) && dest->Session->VLanId != 0)
 {
  UINT vlan_tpid = 0;
  if (src != ((void*)0) && src->Hub != ((void*)0) && src->Hub->Option != ((void*)0))
  {
   vlan_tpid = src->Hub->Option->VlanTypeId;
  }
  if (VLanRemoveTag(&data, &size, dest->Session->VLanId, vlan_tpid) == 0)
  {
   Free(data);
   return;
  }
 }

 if (src != ((void*)0) && dest->Session != ((void*)0) && src->Hub != ((void*)0) && src->Hub->Option != ((void*)0))
 {
  if (dest->Session->AdjustMss != 0 ||
   (dest->Session->IsUsingUdpAcceleration && dest->Session->UdpAccelMss != 0) ||
   (dest->Session->IsRUDPSession && dest->Session->RUdpMss != 0))
  {
   if (src->Hub->Option->DisableAdjustTcpMss == 0)
   {
    UINT target_mss = INFINITE;

    if (dest->Session->AdjustMss != 0)
    {
     target_mss = MIN(target_mss, dest->Session->AdjustMss);
    }

    if (dest->Session->IsUsingUdpAcceleration && dest->Session->UdpAccelMss != 0)
    {
     target_mss = MIN(target_mss, dest->Session->UdpAccelMss);
    }
    else if (dest->Session->IsRUDPSession && dest->Session->RUdpMss != 0)
    {
     target_mss = MIN(target_mss, dest->Session->RUdpMss);
    }


    if (target_mss != INFINITE)
    {
     AdjustTcpMssL2(data, size, target_mss, src->Hub->Option->VlanTypeId);
    }
   }
  }
 }


 b = NewBlock(data, size, 0);

 LockQueue(dest->PacketQueue);
 {

  if (dest->PacketQueue->num_item < MAX_STORED_QUEUE_NUM)
  {

   InsertQueue(dest->PacketQueue, b);

   if (is_flooding)
   {
    if (src != ((void*)0))
    {
     b->IsFlooding = 1;
     CedarAddCurrentTcpQueueSize(src->Cedar, b->Size);
    }
   }
  }
  else
  {

   FreeBlock(b);
  }
 }
 UnlockQueue(dest->PacketQueue);


 if (src != ((void*)0))
 {
  AddCancelList(src->CancelList, dest->Cancel);
 }
 else
 {
  Cancel(dest->Cancel);
 }
}
