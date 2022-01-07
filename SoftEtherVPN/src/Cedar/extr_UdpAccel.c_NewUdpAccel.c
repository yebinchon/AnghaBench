
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int NoNatT; int IsInCedarPortList; int ClientMode; int IsIPv6; scalar_t__ MyCookie; scalar_t__ YourCookie; int NatT_GetIpThread; int NatT_HaltEvent; int NatT_Lock; int MyPort; scalar_t__ MaxUdpPacketSize; int NextIv; int RecvBlockQueue; int MyIp; int YourKey; int MyKey; TYPE_2__* UdpSock; void* Now; void* CreatedTick; int NatT_TranId; TYPE_3__* Cedar; } ;
typedef TYPE_1__ UDP_ACCEL ;
struct TYPE_11__ {int ref; int UdpPortList; } ;
struct TYPE_10__ {int LocalPort; } ;
typedef TYPE_2__ SOCK ;
typedef int IP ;
typedef TYPE_3__ CEDAR ;


 int AddIntDistinct (int ,scalar_t__) ;
 int AddRef (int ) ;
 int Copy (int *,int *,int) ;
 int Debug (char*,int ) ;
 int IsIP6 (int *) ;
 int IsIntInList (int ,scalar_t__) ;
 scalar_t__ IsZeroIP (int *) ;
 int LockList (int ) ;
 scalar_t__ MTU_FOR_PPPOE ;
 int NatT_GetIpThread ;
 int NewEvent () ;
 int NewLock () ;
 int NewQueue () ;
 int NewThread (int ,TYPE_1__*) ;
 TYPE_2__* NewUDPEx3 (scalar_t__,int *) ;
 int Rand (int ,int) ;
 void* Rand32 () ;
 int Rand64 () ;
 void* Tick64 () ;
 scalar_t__ UDP_SERVER_PORT_HIGHER ;
 scalar_t__ UDP_SERVER_PORT_LOWER ;
 int UnlockList (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

UDP_ACCEL *NewUdpAccel(CEDAR *cedar, IP *ip, bool client_mode, bool random_port, bool no_nat_t)
{
 UDP_ACCEL *a;
 SOCK *s;
 UINT max_udp_size;
 bool is_in_cedar_port_list = 0;

 if (IsZeroIP(ip))
 {
  ip = ((void*)0);
 }

 if (client_mode || random_port)
 {

  s = NewUDPEx3(0, ip);
 }
 else
 {

  UINT i;
  s = ((void*)0);

  LockList(cedar->UdpPortList);
  {
   for (i = UDP_SERVER_PORT_LOWER;i <= UDP_SERVER_PORT_HIGHER;i++)
   {
    if (IsIntInList(cedar->UdpPortList, i) == 0)
    {
     s = NewUDPEx3(i, ip);

     if (s != ((void*)0))
     {
      is_in_cedar_port_list = 1;
      break;
     }
    }
   }

   if (s == ((void*)0))
   {

    s = NewUDPEx3(0, ip);
   }

   if (s != ((void*)0) && is_in_cedar_port_list)
   {
    AddIntDistinct(cedar->UdpPortList, i);
   }
  }
  UnlockList(cedar->UdpPortList);
 }

 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 a = ZeroMalloc(sizeof(UDP_ACCEL));

 a->Cedar = cedar;
 AddRef(a->Cedar->ref);

 a->NoNatT = no_nat_t;


 a->NatT_TranId = Rand64();

 a->CreatedTick = Tick64();

 a->IsInCedarPortList = is_in_cedar_port_list;

 a->ClientMode = client_mode;

 a->Now = Tick64();
 a->UdpSock = s;
 Rand(a->MyKey, sizeof(a->MyKey));
 Rand(a->YourKey, sizeof(a->YourKey));

 Copy(&a->MyIp, ip, sizeof(IP));
 a->MyPort = s->LocalPort;

 a->IsIPv6 = IsIP6(ip);

 if (a->IsIPv6)
 {
  a->NoNatT = 1;
 }

 a->RecvBlockQueue = NewQueue();

 Rand(a->NextIv, sizeof(a->NextIv));

 do
 {
  a->MyCookie = Rand32();
 }
 while (a->MyCookie == 0);

 do
 {
  a->YourCookie = Rand32();
 }
 while (a->MyCookie == 0 || a->MyCookie == a->YourCookie);


 max_udp_size = MTU_FOR_PPPOE;

 if (a->IsIPv6 == 0)
 {

  max_udp_size -= 20;
 }
 else
 {

  max_udp_size -= 40;
 }


 max_udp_size -= 8;

 a->MaxUdpPacketSize = max_udp_size;

 Debug("Udp Accel My Port = %u\n", a->MyPort);


 a->NatT_Lock = NewLock();
 a->NatT_HaltEvent = NewEvent();

 if (a->NoNatT == 0)
 {
  a->NatT_GetIpThread = NewThread(NatT_GetIpThread, a);
 }

 return a;
}
