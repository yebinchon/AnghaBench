
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_54__ TYPE_9__ ;
typedef struct TYPE_53__ TYPE_8__ ;
typedef struct TYPE_52__ TYPE_7__ ;
typedef struct TYPE_51__ TYPE_6__ ;
typedef struct TYPE_50__ TYPE_5__ ;
typedef struct TYPE_49__ TYPE_4__ ;
typedef struct TYPE_48__ TYPE_3__ ;
typedef struct TYPE_47__ TYPE_2__ ;
typedef struct TYPE_46__ TYPE_1__ ;
typedef struct TYPE_45__ TYPE_13__ ;
typedef struct TYPE_44__ TYPE_12__ ;
typedef struct TYPE_43__ TYPE_11__ ;
typedef struct TYPE_42__ TYPE_10__ ;


typedef int ret ;
typedef int magic_cookie ;
typedef int client_mac ;
typedef int client_ip ;
struct TYPE_54__ {size_t NumExistingRoutes; TYPE_12__* Entries; } ;
struct TYPE_52__ {int DhcpExpire; int DhcpMask; int HostIP; scalar_t__ DhcpGateway; int UseNat; int DhcpDomain; int DhcpPendingLeaseList; TYPE_9__ PushRoute; int DhcpDns2; int DhcpDns; int DhcpLeaseList; scalar_t__ DhcpId; TYPE_5__* NativeNat; } ;
typedef TYPE_7__ VH ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_49__ {TYPE_3__* UDPHeader; } ;
struct TYPE_47__ {TYPE_1__* IPv4Header; } ;
struct TYPE_51__ {TYPE_13__* DHCPv4Header; } ;
struct TYPE_53__ {int PacketSize; TYPE_4__ L4; TYPE_2__ L3; int * MacAddressSrc; scalar_t__ MacHeader; TYPE_6__ L7; } ;
struct TYPE_50__ {int* CurrentMacAddress; } ;
struct TYPE_48__ {int SrcPort; } ;
struct TYPE_46__ {scalar_t__ SrcIP; } ;
struct TYPE_45__ {int TransactionId; int OpCode; int HardwareAddressSize; int HardwareType; int ClientMacAddress; } ;
struct TYPE_44__ {int Exists; int SubnetMaskLen; TYPE_9__ SubnetMask; TYPE_9__ Network; TYPE_9__ Gateway; } ;
struct TYPE_43__ {scalar_t__ Id; int Hostname; int IpAddress; int MacAddress; } ;
struct TYPE_42__ {scalar_t__ Opcode; scalar_t__ RequestedIp; int ServerAddress; int LeaseTime; int SubnetMask; scalar_t__ Gateway; int DomainName; int Hostname; TYPE_9__ ClasslessRoute; int DnsServer2; int DnsServer; } ;
typedef TYPE_8__ PKT ;
typedef int LIST ;
typedef TYPE_9__ IP ;
typedef TYPE_10__ DHCP_OPTION_LIST ;
typedef TYPE_11__ DHCP_LEASE ;
typedef int DHCP_CLASSLESS_ROUTE_TABLE ;
typedef TYPE_12__ DHCP_CLASSLESS_ROUTE ;
typedef TYPE_13__ DHCPV4_HEADER ;
typedef int BUF ;


 int Add (int ,TYPE_11__*) ;
 int BinToStr (char*,int,int *,int) ;
 int * BuildDhcpOption (TYPE_10__*) ;
 int * BuildDhcpOptionsBuf (int *) ;
 scalar_t__ Cmp (int *,int*,int) ;
 int Copy (TYPE_9__*,TYPE_9__*,int) ;
 scalar_t__ DHCP_ACK ;
 scalar_t__ DHCP_DISCOVER ;
 scalar_t__ DHCP_INFORM ;
 int DHCP_MAGIC_COOKIE ;
 scalar_t__ DHCP_NACK ;
 scalar_t__ DHCP_OFFER ;
 scalar_t__ DHCP_REQUEST ;
 int Debug (char*,char*,char*) ;
 int Delete (int ,TYPE_11__*) ;
 int Endian16 (int ) ;
 void* Endian32 (int) ;
 int Free (TYPE_10__*) ;
 int FreeBuf (int *) ;
 int FreeDhcpLease (TYPE_11__*) ;
 int FreeDhcpOptions (int *) ;
 int GSF_DISABLE_PUSH_ROUTE ;
 int * GetBestClasslessRoute (TYPE_9__*,TYPE_9__*) ;
 scalar_t__ GetGlobalServerFlag (int ) ;
 int INFINITE ;
 int IPAnd4 (TYPE_9__*,TYPE_9__*,TYPE_9__*) ;
 int IPToStr (char*,int,TYPE_9__*) ;
 int IPToStr32 (char*,int,int ) ;
 scalar_t__ IsIpcMacAddress (int *) ;
 scalar_t__ LIST_NUM (int ) ;
 size_t MAX_DHCP_CLASSLESS_ROUTE_ENTRIES ;
 int MAX_SIZE ;
 int MacToStr (char*,int,int ) ;
 int NLog (TYPE_7__*,char*,scalar_t__,char*,char*,int ,int) ;
 int NN_HOSTNAME_STARTWITH ;
 int NN_HOSTNAME_STARTWITH2 ;
 TYPE_11__* NewDhcpLease (int,int *,int,int,int ) ;
 TYPE_10__* ParseDhcpOptionList (int *,int) ;
 TYPE_11__* SearchDhcpLeaseByIp (TYPE_7__*,int) ;
 TYPE_11__* SearchDhcpPendingLeaseByIp (TYPE_7__*,int) ;
 int ServeDhcpDiscover (TYPE_7__*,int *,scalar_t__) ;
 int ServeDhcpRequest (TYPE_7__*,int *,scalar_t__) ;
 scalar_t__ StartWith (int ,int ) ;
 int StrCpy (int ,int,int ) ;
 int SubnetMaskToInt (TYPE_9__*) ;
 int UINTToIP (TYPE_9__*,int) ;
 int VirtualDhcpSend (TYPE_7__*,int,int,int ,int,int ,int *,int ,int ) ;
 int Zero (TYPE_10__*,int) ;

void VirtualDhcpServer(VH *v, PKT *p)
{
 DHCPV4_HEADER *dhcp;
 UCHAR *data;
 UINT size;
 UINT dhcp_header_size;
 UINT dhcp_data_offset;
 UINT tran_id;
 UINT magic_cookie = Endian32(DHCP_MAGIC_COOKIE);
 bool ok;
 DHCP_OPTION_LIST *opt;

 if (v == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 if (v->NativeNat != ((void*)0))
 {
  if (Cmp(p->MacAddressSrc, v->NativeNat->CurrentMacAddress, 6) == 0)
  {



  }
 }

 dhcp = p->L7.DHCPv4Header;

 tran_id = Endian32(dhcp->TransactionId);


 dhcp_header_size = sizeof(DHCPV4_HEADER);
 dhcp_data_offset = (UINT)(((UCHAR *)p->L7.DHCPv4Header) - ((UCHAR *)p->MacHeader) + dhcp_header_size);
 data = ((UCHAR *)dhcp) + dhcp_header_size;
 size = p->PacketSize - dhcp_data_offset;
 if (dhcp_header_size < 5)
 {

  return;
 }


 ok = 0;
 while (size >= 5)
 {
  if (Cmp(data, &magic_cookie, sizeof(magic_cookie)) == 0)
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

  return;
 }


 opt = ParseDhcpOptionList(data, size);
 if (opt == ((void*)0))
 {

  return;
 }

 if (StartWith(opt->Hostname, NN_HOSTNAME_STARTWITH) || StartWith(opt->Hostname, NN_HOSTNAME_STARTWITH2))
 {
  Free(opt);
  return;
 }

 if (dhcp->OpCode == 1 && (opt->Opcode == DHCP_DISCOVER || opt->Opcode == DHCP_REQUEST || opt->Opcode == DHCP_INFORM))
 {

  UINT ip = 0;

  if (opt->RequestedIp == 0)
  {
   opt->RequestedIp = p->L3.IPv4Header->SrcIP;
  }
  if (opt->Opcode == DHCP_DISCOVER)
  {

   ip = ServeDhcpDiscover(v, p->MacAddressSrc, opt->RequestedIp);
  }
  else if (opt->Opcode == DHCP_REQUEST)
  {

   ip = ServeDhcpRequest(v, p->MacAddressSrc, opt->RequestedIp);
  }

  if (ip != 0 || opt->Opcode == DHCP_INFORM)
  {


   if (opt->Opcode == DHCP_REQUEST)
   {
    DHCP_LEASE *d;
    char client_mac[MAX_SIZE];
    char client_ip[MAX_SIZE];


    d = SearchDhcpLeaseByIp(v, ip);
    if (d != ((void*)0))
    {
     FreeDhcpLease(d);
     Delete(v->DhcpLeaseList, d);
    }

    d = SearchDhcpPendingLeaseByIp(v, ip);
    if (d != ((void*)0))
    {
     FreeDhcpLease(d);
     Delete(v->DhcpPendingLeaseList, d);
    }


    d = NewDhcpLease(v->DhcpExpire, p->MacAddressSrc, ip, v->DhcpMask, opt->Hostname);
    d->Id = ++v->DhcpId;
    Add(v->DhcpLeaseList, d);

    MacToStr(client_mac, sizeof(client_mac), d->MacAddress);
    IPToStr32(client_ip, sizeof(client_ip), d->IpAddress);

    NLog(v, "LH_NAT_DHCP_CREATED", d->Id, client_mac, client_ip, d->Hostname, v->DhcpExpire / 1000);
   }


   if (1)
   {
    DHCP_OPTION_LIST ret;
    LIST *o;
    Zero(&ret, sizeof(ret));

    ret.Opcode = (opt->Opcode == DHCP_DISCOVER ? DHCP_OFFER : DHCP_ACK);
    ret.ServerAddress = v->HostIP;
    if (v->DhcpExpire == INFINITE)
    {
     ret.LeaseTime = INFINITE;
    }
    else
    {
     ret.LeaseTime = Endian32(v->DhcpExpire / 1000);
    }

    if (opt->Opcode == DHCP_INFORM)
    {
     ret.LeaseTime = 0;
    }

    StrCpy(ret.DomainName, sizeof(ret.DomainName), v->DhcpDomain);
    ret.SubnetMask = v->DhcpMask;
    ret.DnsServer = v->DhcpDns;
    ret.DnsServer2 = v->DhcpDns2;
    ret.Gateway = v->DhcpGateway;

    if (GetGlobalServerFlag(GSF_DISABLE_PUSH_ROUTE) == 0)
    {
     Copy(&ret.ClasslessRoute, &v->PushRoute, sizeof(DHCP_CLASSLESS_ROUTE_TABLE));

     if (IsIpcMacAddress(p->MacAddressSrc))
     {
      if (ret.Gateway == 0)
      {



       IP dhcp_ip;
       IP dhcp_mask;
       IP dhcp_network;

       UINTToIP(&dhcp_ip, ip);

       if (ip == 0)
       {
        UINTToIP(&dhcp_ip, p->L3.IPv4Header->SrcIP);
       }

       UINTToIP(&dhcp_mask, v->DhcpMask);

       IPAnd4(&dhcp_network, &dhcp_ip, &dhcp_mask);

       if (GetBestClasslessRoute(&ret.ClasslessRoute, &dhcp_ip) == ((void*)0))
       {
        if (ret.ClasslessRoute.NumExistingRoutes < MAX_DHCP_CLASSLESS_ROUTE_ENTRIES)
        {
         DHCP_CLASSLESS_ROUTE *cr = &ret.ClasslessRoute.Entries[ret.ClasslessRoute.NumExistingRoutes];

         cr->Exists = 1;

         UINTToIP(&cr->Gateway, v->HostIP);

         if (v->UseNat == 0 && ret.ClasslessRoute.NumExistingRoutes >= 1)
         {
          Copy(&cr->Gateway, &ret.ClasslessRoute.Entries[0].Gateway, sizeof(IP));
         }

         Copy(&cr->Network, &dhcp_network, sizeof(IP));
         Copy(&cr->SubnetMask, &dhcp_mask, sizeof(IP));
         cr->SubnetMaskLen = SubnetMaskToInt(&dhcp_mask);

         ret.ClasslessRoute.NumExistingRoutes++;
        }
       }
      }
     }
    }

    if (opt->Opcode != DHCP_INFORM)
    {
     char client_mac[MAX_SIZE];
     char client_ip[64];
     IP ips;

     BinToStr(client_mac, sizeof(client_mac), p->MacAddressSrc, 6);
     UINTToIP(&ips, ip);
     IPToStr(client_ip, sizeof(client_ip), &ips);

     if (ret.Opcode == DHCP_OFFER)
     {

      DHCP_LEASE *d = NewDhcpLease(5000, p->MacAddressSrc, ip, v->DhcpMask, opt->Hostname);
      d->Id = LIST_NUM(v->DhcpPendingLeaseList);
      Add(v->DhcpPendingLeaseList, d);

      Debug("VirtualDhcpServer(): %s has been marked as pending for %s\n", client_ip, client_mac);
     }
     else
     {

      Debug("VirtualDhcpServer(): %s has been assigned to %s\n", client_ip, client_mac);
     }
    }


    o = BuildDhcpOption(&ret);
    if (o != ((void*)0))
    {
     BUF *b = BuildDhcpOptionsBuf(o);
     if (b != ((void*)0))
     {
      UINT dest_ip = p->L3.IPv4Header->SrcIP;
      if (dest_ip == 0)
      {
       dest_ip = 0xffffffff;
      }

      VirtualDhcpSend(v, tran_id, dest_ip, Endian16(p->L4.UDPHeader->SrcPort),
       ip, dhcp->ClientMacAddress, b, dhcp->HardwareType, dhcp->HardwareAddressSize);


      FreeBuf(b);
     }
     FreeDhcpOptions(o);
    }
   }
  }
  else
  {

   DHCP_OPTION_LIST ret;
   LIST *o;
   Zero(&ret, sizeof(ret));

   ret.Opcode = DHCP_NACK;
   ret.ServerAddress = v->HostIP;
   StrCpy(ret.DomainName, sizeof(ret.DomainName), v->DhcpDomain);
   ret.SubnetMask = v->DhcpMask;


   o = BuildDhcpOption(&ret);
   if (o != ((void*)0))
   {
    BUF *b = BuildDhcpOptionsBuf(o);
    if (b != ((void*)0))
    {
     UINT dest_ip = p->L3.IPv4Header->SrcIP;
     if (dest_ip == 0)
     {
      dest_ip = 0xffffffff;
     }

     VirtualDhcpSend(v, tran_id, dest_ip, Endian16(p->L4.UDPHeader->SrcPort),
      ip, dhcp->ClientMacAddress, b, dhcp->HardwareType, dhcp->HardwareAddressSize);


     FreeBuf(b);
    }
    FreeDhcpOptions(o);
   }
  }
 }


 Free(opt);
}
