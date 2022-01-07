
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_25__ {int Size; int OptionSize; TYPE_8__* Header; TYPE_11__* ParsedOptionList; int * OptionData; int OpCode; int * OptionList; void* DestPort; void* SrcPort; int DestIP; int SrcIP; int * Data; } ;
struct TYPE_24__ {scalar_t__ ServerIP; int YourIP; } ;
struct TYPE_23__ {int Size; scalar_t__ Data; } ;
struct TYPE_21__ {TYPE_4__* UDPHeader; } ;
struct TYPE_19__ {TYPE_2__* IPv4Header; } ;
struct TYPE_17__ {scalar_t__ PointerL7; } ;
struct TYPE_22__ {scalar_t__ TypeL3; scalar_t__ TypeL4; scalar_t__ TypeL7; int PacketSize; TYPE_5__ L4; TYPE_3__ L3; TYPE_1__ L7; scalar_t__ PacketData; } ;
struct TYPE_20__ {int DstPort; int SrcPort; } ;
struct TYPE_18__ {int DstIP; int SrcIP; } ;
struct TYPE_16__ {scalar_t__ ServerAddress; int ClientAddress; } ;
typedef TYPE_6__ PKT ;
typedef TYPE_7__ DHCP_OPTION ;
typedef TYPE_8__ DHCPV4_HEADER ;
typedef TYPE_9__ DHCPV4_DATA ;


 int * Clone (scalar_t__,int) ;
 scalar_t__ Cmp (int *,int*,int) ;
 int DHCP_ID_MESSAGE_TYPE ;
 int DHCP_MAGIC_COOKIE ;
 void* Endian16 (int ) ;
 int Endian32 (int ) ;
 int FreeDHCPv4Data (TYPE_9__*) ;
 TYPE_7__* GetDhcpOption (int *,int ) ;
 scalar_t__ L3_IPV4 ;
 scalar_t__ L4_UDP ;
 scalar_t__ L7_DHCPV4 ;
 TYPE_11__* ParseDhcpOptionList (int *,int) ;
 int * ParseDhcpOptions (int *,int) ;
 int UINTToIP (int *,int ) ;
 TYPE_9__* ZeroMalloc (int) ;

DHCPV4_DATA *ParseDHCPv4Data(PKT *pkt)
{
 DHCPV4_DATA *d;
 UCHAR *data;
 UINT size;
 UINT magic_cookie = Endian32(DHCP_MAGIC_COOKIE);
 bool ok = 0;
 DHCP_OPTION *o;

 if (pkt == ((void*)0))
 {
  return ((void*)0);
 }
 if (pkt->TypeL3 != L3_IPV4 || pkt->TypeL4 != L4_UDP || pkt->TypeL7 != L7_DHCPV4)
 {
  return ((void*)0);
 }

 d = ZeroMalloc(sizeof(DHCPV4_DATA));
 d->Size = (UINT)(pkt->PacketSize - (((UCHAR *)pkt->L7.PointerL7) - ((UCHAR *)pkt->PacketData)));
 d->Data = Clone(pkt->L7.PointerL7, d->Size);

 if (d->Size < sizeof(DHCPV4_HEADER))
 {
  goto LABEL_ERROR;
 }


 d->Header = (DHCPV4_HEADER *)d->Data;

 data = d->Data;
 size = d->Size;


 ok = 0;
 while (size >= 5)
 {
  if (Cmp(data, &magic_cookie, 4) == 0)
  {

   data += 4;
   size -= 4;
   ok = 1;
   break;
  }

  data++;
  size--;
 }

 if (ok == 0)
 {

  goto LABEL_ERROR;
 }


 d->OptionData = data;
 d->OptionSize = size;

 d->OptionList = ParseDhcpOptions(data, size);
 if (d->OptionList == ((void*)0))
 {

  goto LABEL_ERROR;
 }

 UINTToIP(&d->SrcIP, pkt->L3.IPv4Header->SrcIP);
 UINTToIP(&d->DestIP, pkt->L3.IPv4Header->DstIP);

 d->SrcPort = Endian16(pkt->L4.UDPHeader->SrcPort);
 d->DestPort = Endian16(pkt->L4.UDPHeader->DstPort);

 o = GetDhcpOption(d->OptionList, DHCP_ID_MESSAGE_TYPE);
 if (o == ((void*)0) || o->Size != 1)
 {
  goto LABEL_ERROR;
 }

 d->OpCode = *((UCHAR *)o->Data);

 d->ParsedOptionList = ParseDhcpOptionList(d->OptionData, d->OptionSize);

 if (d->ParsedOptionList == ((void*)0))
 {
  goto LABEL_ERROR;
 }

 if (d->ParsedOptionList->ServerAddress == 0)
 {
  d->ParsedOptionList->ServerAddress = d->Header->ServerIP;
 }

 d->ParsedOptionList->ClientAddress = d->Header->YourIP;

 return d;

LABEL_ERROR:
 FreeDHCPv4Data(d);
 return ((void*)0);
}
