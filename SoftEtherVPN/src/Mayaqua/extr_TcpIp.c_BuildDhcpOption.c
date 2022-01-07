
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int opcode ;
typedef scalar_t__ UCHAR ;
struct TYPE_11__ {int NumExistingRoutes; } ;
struct TYPE_10__ {int Size; scalar_t__* Buf; } ;
struct TYPE_9__ {scalar_t__ ServerAddress; scalar_t__ LeaseTime; scalar_t__* DomainName; scalar_t__ SubnetMask; scalar_t__ Gateway; TYPE_7__ ClasslessRoute; int DnsServer2; int DnsServer; scalar_t__ Opcode; } ;
typedef int LIST ;
typedef TYPE_1__ DHCP_OPTION_LIST ;
typedef TYPE_2__ BUF ;


 int Add (int *,int ) ;
 int DHCP_ID_CLASSLESS_ROUTE ;
 int DHCP_ID_DNS_ADDR ;
 int DHCP_ID_DOMAIN_NAME ;
 int DHCP_ID_GATEWAY_ADDR ;
 int DHCP_ID_LEASE_TIME ;
 int DHCP_ID_MESSAGE_TYPE ;
 int DHCP_ID_MS_CLASSLESS_ROUTE ;
 int DHCP_ID_SERVER_ADDRESS ;
 int DHCP_ID_SUBNET_MASK ;
 TYPE_2__* DhcpBuildClasslessRouteData (TYPE_7__*) ;
 int FreeBuf (TYPE_2__*) ;
 TYPE_2__* NewBuf () ;
 int NewDhcpOption (int ,scalar_t__*,int) ;
 int * NewListFast (int *) ;
 int StrLen (scalar_t__*) ;
 int WriteBuf (TYPE_2__*,int *,int) ;

LIST *BuildDhcpOption(DHCP_OPTION_LIST *opt)
{
 LIST *o;
 UCHAR opcode;
 BUF *dns_buf;

 if (opt == ((void*)0))
 {
  return ((void*)0);
 }

 o = NewListFast(((void*)0));


 opcode = (UCHAR)opt->Opcode;
 Add(o, NewDhcpOption(DHCP_ID_MESSAGE_TYPE, &opcode, sizeof(opcode)));
 Add(o, NewDhcpOption(DHCP_ID_SERVER_ADDRESS, &opt->ServerAddress, sizeof(opt->ServerAddress)));

 if (opt->LeaseTime != 0)
 {
  Add(o, NewDhcpOption(DHCP_ID_LEASE_TIME, &opt->LeaseTime, sizeof(opt->LeaseTime)));
 }

 if (StrLen(opt->DomainName) != 0 && opt->DnsServer != 0)
 {
  Add(o, NewDhcpOption(DHCP_ID_DOMAIN_NAME, opt->DomainName, StrLen(opt->DomainName)));
 }
 if (opt->SubnetMask != 0)
 {
  Add(o, NewDhcpOption(DHCP_ID_SUBNET_MASK, &opt->SubnetMask, sizeof(opt->SubnetMask)));
 }
 if (opt->Gateway != 0)
 {
  Add(o, NewDhcpOption(DHCP_ID_GATEWAY_ADDR, &opt->Gateway, sizeof(opt->Gateway)));
 }

 dns_buf = NewBuf();

 if (opt->DnsServer != 0)
 {
  WriteBuf(dns_buf, &opt->DnsServer, sizeof(opt->DnsServer));
 }
 if (opt->DnsServer2 != 0)
 {
  WriteBuf(dns_buf, &opt->DnsServer2, sizeof(opt->DnsServer2));
 }

 if (dns_buf->Size >= 1)
 {
  Add(o, NewDhcpOption(DHCP_ID_DNS_ADDR, dns_buf->Buf, dns_buf->Size));
 }

 FreeBuf(dns_buf);

 if (opt->ClasslessRoute.NumExistingRoutes >= 1)
 {
  BUF *b = DhcpBuildClasslessRouteData(&opt->ClasslessRoute);

  if (b != ((void*)0))
  {
   Add(o, NewDhcpOption(DHCP_ID_CLASSLESS_ROUTE, b->Buf, b->Size));
   Add(o, NewDhcpOption(DHCP_ID_MS_CLASSLESS_ROUTE, b->Buf, b->Size));

   FreeBuf(b);
  }
 }

 return o;
}
