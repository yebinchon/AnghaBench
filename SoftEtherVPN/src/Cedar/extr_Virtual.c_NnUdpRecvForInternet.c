
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int Now; int Counter; TYPE_4__* NativeNat; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ USHORT ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {int Checksum; void* PacketLength; void* DstPort; void* SrcPort; } ;
typedef TYPE_2__ UDP_HEADER ;
typedef int UCHAR ;
struct TYPE_22__ {int NatTableForRecv; int NatTableForSend; int PublicIP; } ;
struct TYPE_21__ {scalar_t__ PublicPort; int PublicIp; int LastCommTime; int TotalSent; int Id; int CreatedTime; scalar_t__ DestPort; scalar_t__ DestIp; scalar_t__ SrcPort; scalar_t__ SrcIp; int Protocol; void* HashCodeForRecv; void* HashCodeForSend; int Status; } ;
typedef TYPE_3__ NATIVE_NAT_ENTRY ;
typedef TYPE_4__ NATIVE_NAT ;
typedef int IP ;


 int AddHash (int ,TYPE_3__*) ;
 int CalcChecksumForIPv4 (int ,scalar_t__,int ,TYPE_2__*,scalar_t__,int ) ;
 int CanCreateNewNatEntry (TYPE_1__*) ;
 int Copy (int *,void*,scalar_t__) ;
 void* Endian16 (scalar_t__) ;
 int Free (TYPE_2__*) ;
 void* INFINITE ;
 int IPToStr (char*,int ,int *) ;
 int IP_PROTO_UDP ;
 int Inc (int ) ;
 int MAX_SIZE ;
 int NAT_TCP_ESTABLISHED ;
 int NAT_UDP ;
 int NLog (TYPE_1__*,char*,int ,char*,scalar_t__,char*,scalar_t__) ;
 int NnDeleteOldestNatSessionIfNecessary (TYPE_4__*,scalar_t__,int ) ;
 int NnIpSendForInternet (TYPE_4__*,int ,int,int ,scalar_t__,TYPE_2__*,scalar_t__,scalar_t__) ;
 int NnIsActive (TYPE_1__*) ;
 scalar_t__ NnMapNewPublicPort (TYPE_4__*,int ,int ,int ,int ) ;
 int NnSetNat (TYPE_3__*,int ,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 TYPE_3__* SearchHash (int ,TYPE_3__*) ;
 int UINTToIP (int *,scalar_t__) ;
 void* ZeroMalloc (scalar_t__) ;

void NnUdpRecvForInternet(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, void *data, UINT size, UINT max_l3_size)
{
 NATIVE_NAT_ENTRY tt;
 NATIVE_NAT_ENTRY *e;
 NATIVE_NAT *t;
 UDP_HEADER *udp;

 if (NnIsActive(v) == 0 || data == ((void*)0))
 {
  return;
 }

 t = v->NativeNat;


 NnSetNat(&tt, NAT_UDP, src_ip, src_port, 0, 0, 0, 0);

 e = SearchHash(t->NatTableForSend, &tt);

 if (e == ((void*)0))
 {

  UINT public_port;

  if (CanCreateNewNatEntry(v) == 0)
  {

   return;
  }

  NnDeleteOldestNatSessionIfNecessary(t, src_ip, NAT_UDP);


  public_port = NnMapNewPublicPort(t, NAT_UDP, 0, 0, t->PublicIP);
  if (public_port == 0)
  {

   return;
  }

  e = ZeroMalloc(sizeof(NATIVE_NAT_ENTRY));

  e->Status = NAT_TCP_ESTABLISHED;

  e->HashCodeForSend = INFINITE;
  e->HashCodeForRecv = INFINITE;
  e->Id = Inc(v->Counter);
  e->Protocol = NAT_UDP;
  e->SrcIp = src_ip;
  e->SrcPort = src_port;
  e->DestIp = 0;
  e->DestPort = 0;
  e->PublicIp = t->PublicIP;
  e->PublicPort = public_port;

  e->CreatedTime = v->Now;
  e->LastCommTime = v->Now;


  AddHash(t->NatTableForSend, e);
  AddHash(t->NatTableForRecv, e);


  if (1)
  {
   IP ip1, ip2;
   char s1[MAX_SIZE], s2[MAX_SIZE];
   UINTToIP(&ip1, src_ip);
   UINTToIP(&ip2, dest_ip);
   IPToStr(s1, 0, &ip1);
   IPToStr(s2, 0, &ip2);

   NLog(v, "LH_NAT_UDP_CREATED", e->Id, s1, src_port, s2, dest_port);
  }
 }


 udp = ZeroMalloc(sizeof(UDP_HEADER) + size);

 udp->SrcPort = Endian16(e->PublicPort);
 udp->DstPort = Endian16(dest_port);
 udp->PacketLength = Endian16((USHORT)sizeof(UDP_HEADER) + size);

 Copy(((UCHAR *)udp) + sizeof(UDP_HEADER), data, size);

 udp->Checksum = CalcChecksumForIPv4(e->PublicIp, dest_ip, IP_PROTO_UDP, udp, sizeof(UDP_HEADER) + size, 0);

 e->TotalSent += (UINT64)size;
 e->LastCommTime = v->Now;


 NnIpSendForInternet(t, IP_PROTO_UDP, 127, e->PublicIp, dest_ip, udp, sizeof(UDP_HEADER) + size, max_l3_size);

 Free(udp);
}
