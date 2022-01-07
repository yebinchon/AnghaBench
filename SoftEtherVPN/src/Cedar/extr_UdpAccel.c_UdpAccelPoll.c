
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef void* UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_18__ {int member_0; } ;
struct TYPE_17__ {char* TmpBuf; int UdpIpQueryPacketSize; scalar_t__ UdpIpQueryPort; scalar_t__ MyPortByNatTServer; int MyPortByNatTServerChanged; int FatalError; scalar_t__ NextSendKeepAlive; scalar_t__ Now; int YourPortByNatTServerChanged; int FastDetect; int NoNatT; scalar_t__ NextPerformNatTTick; scalar_t__ UseSuperRelayQuery; scalar_t__ UseUdpIpQuery; scalar_t__ CommToNatT_NumFail; TYPE_8__* UdpSock; int RecvBlockQueue; int UdpIpQueryPacketData; TYPE_2__ UdpIpQueryHost; int * NatT_GetIpThread; int NatT_Lock; int NatT_IP; } ;
typedef TYPE_1__ UDP_ACCEL ;
typedef char UCHAR ;
struct TYPE_19__ {int IgnoreRecvErr; } ;
typedef TYPE_2__ IP ;
typedef int BUF ;
typedef int BLOCK ;


 scalar_t__ CmpIpAddr (TYPE_2__*,TYPE_2__*) ;
 int Copy (TYPE_2__*,int *,int) ;
 int Debug (char*,scalar_t__) ;
 int FreeBuf (int *) ;
 scalar_t__ GenRandInterval (int ,int ) ;
 int INFINITE ;
 int InsertQueue (int ,int *) ;
 int IsZeroIp (TYPE_2__*) ;
 int Lock (int ) ;
 scalar_t__ MAX_NUM_IGNORE_ERRORS ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int * MemToBuf (int ,int) ;
 scalar_t__ RUDPParseIPAndPortStr (char*,scalar_t__,TYPE_2__*,scalar_t__*) ;
 scalar_t__ RecvFrom (TYPE_8__*,TYPE_2__*,scalar_t__*,char*,int ) ;
 int ReleaseThread (int *) ;
 scalar_t__ SOCK_LATER ;
 int SendTo (TYPE_8__*,TYPE_2__*,scalar_t__,char*,int) ;
 scalar_t__ UDP_ACCELERATION_KEEPALIVE_INTERVAL_MAX ;
 scalar_t__ UDP_ACCELERATION_KEEPALIVE_INTERVAL_MAX_FAST ;
 scalar_t__ UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN ;
 scalar_t__ UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN_FAST ;
 int UDP_ACCELERATION_TMP_BUF_SIZE ;
 int UDP_NAT_T_INTERVAL_FAIL_MAX ;
 scalar_t__ UDP_NAT_T_INTERVAL_INITIAL ;
 int UDP_NAT_T_INTERVAL_MAX ;
 int UDP_NAT_T_INTERVAL_MIN ;
 scalar_t__ UDP_NAT_T_PORT ;
 int UdpAccelIsSendReady (TYPE_1__*,int) ;
 int * UdpAccelProcessRecvPacket (TYPE_1__*,char*,scalar_t__,TYPE_2__*,scalar_t__) ;
 int UdpAccelSend (TYPE_1__*,int *,int ,int,int,int) ;
 int Unlock (int ) ;
 int WaitThread (int *,int ) ;
 scalar_t__ rand () ;

void UdpAccelPoll(UDP_ACCEL *a)
{
 IP nat_t_ip;
 UINT num_ignore_errors = 0;
 UCHAR *tmp;

 if (a == ((void*)0))
 {
  return;
 }

 tmp = a->TmpBuf;

 Lock(a->NatT_Lock);
 {
  Copy(&nat_t_ip, &a->NatT_IP, sizeof(IP));
 }
 Unlock(a->NatT_Lock);

 if (IsZeroIp(&nat_t_ip) == 0)
 {

  if (a->NatT_GetIpThread != ((void*)0))
  {
   WaitThread(a->NatT_GetIpThread, INFINITE);
   ReleaseThread(a->NatT_GetIpThread);
   a->NatT_GetIpThread = ((void*)0);
  }
 }


 while (1)
 {
  IP src_ip;
  UINT src_port;
  UINT ret;

  ret = RecvFrom(a->UdpSock, &src_ip, &src_port, tmp, UDP_ACCELERATION_TMP_BUF_SIZE);

  if (ret != 0 && ret != SOCK_LATER)
  {
   if (a->UseUdpIpQuery && a->UdpIpQueryPacketSize >= 8 && CmpIpAddr(&a->UdpIpQueryHost, &src_ip) == 0 &&
    src_port == a->UdpIpQueryPort)
   {

    IP my_ip = {0};
    UINT myport = 0;
    BUF *b = MemToBuf(a->UdpIpQueryPacketData, a->UdpIpQueryPacketSize);


    FreeBuf(b);
   }
   else if (IsZeroIp(&nat_t_ip) == 0 && CmpIpAddr(&nat_t_ip, &src_ip) == 0 &&
    src_port == UDP_NAT_T_PORT)
   {

    IP my_ip;
    UINT myport;

    if (RUDPParseIPAndPortStr(tmp, ret, &my_ip, &myport))
    {
     if (myport >= 1 && myport <= 65535)
     {
      if (a->MyPortByNatTServer != myport)
      {
       a->MyPortByNatTServer = myport;
       a->MyPortByNatTServerChanged = 1;
       a->CommToNatT_NumFail = 0;

       Debug("NAT-T: MyPort = %u\n", myport);
      }
     }
    }
   }
   else
   {
    BLOCK *b = UdpAccelProcessRecvPacket(a, tmp, ret, &src_ip, src_port);
    if (b != ((void*)0))
    {

     InsertQueue(a->RecvBlockQueue, b);
    }
   }
  }
  else
  {
   if (ret == 0)
   {
    if (a->UdpSock->IgnoreRecvErr == 0)
    {

     a->FatalError = 1;
     break;
    }

    if ((num_ignore_errors++) >= MAX_NUM_IGNORE_ERRORS)
    {
     a->FatalError = 1;
     break;
    }
   }
   else
   {

    break;
   }
  }
 }


 if (a->NextSendKeepAlive == 0 || (a->NextSendKeepAlive <= a->Now) || a->YourPortByNatTServerChanged)
 {
  a->YourPortByNatTServerChanged = 0;

  if (UdpAccelIsSendReady(a, 0))
  {
   UINT rand_interval;

   if (a->FastDetect == 0)
   {
    rand_interval = rand() % (UDP_ACCELERATION_KEEPALIVE_INTERVAL_MAX - UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN) + UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN;
   }
   else
   {
    rand_interval = rand() % (UDP_ACCELERATION_KEEPALIVE_INTERVAL_MAX_FAST - UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN_FAST) + UDP_ACCELERATION_KEEPALIVE_INTERVAL_MIN_FAST;
   }

   a->NextSendKeepAlive = a->Now + (UINT64)rand_interval;



   UdpAccelSend(a, ((void*)0), 0, 0, 1000, 0);
  }
 }


 if (a->NoNatT == 0)
 {

  if (IsZeroIp(&nat_t_ip) == 0)
  {
   if (UdpAccelIsSendReady(a, 1) == 0)
   {
    if (a->NextPerformNatTTick == 0 || (a->NextPerformNatTTick <= a->Now))
    {
     UINT rand_interval;
     UCHAR c = 'B';

     a->CommToNatT_NumFail++;

     rand_interval = UDP_NAT_T_INTERVAL_INITIAL * MIN(a->CommToNatT_NumFail, UDP_NAT_T_INTERVAL_FAIL_MAX);



     if (a->MyPortByNatTServer != 0)
     {
      rand_interval = GenRandInterval(UDP_NAT_T_INTERVAL_MIN, UDP_NAT_T_INTERVAL_MAX);
     }

     a->NextPerformNatTTick = a->Now + (UINT64)rand_interval;
     SendTo(a->UdpSock, &nat_t_ip, UDP_NAT_T_PORT, &c, 1);


    }
   }
   else
   {
    a->NextPerformNatTTick = 0;
    a->CommToNatT_NumFail = 0;
   }
  }
 }
 else
 {

  if (a->UseUdpIpQuery || a->UseSuperRelayQuery)
  {
  }
 }
}
