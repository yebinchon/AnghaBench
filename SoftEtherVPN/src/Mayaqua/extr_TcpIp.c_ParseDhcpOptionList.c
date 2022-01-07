
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_7__ {int Size; int* Data; } ;
struct TYPE_6__ {int Opcode; int ClasslessRoute; int WinsServer2; int WinsServer; int DnsServer2; int DnsServer; int Gateway; int * DomainName; int ServerAddress; int LeaseTime; int SubnetMask; int * Hostname; int RequestedIp; } ;
typedef int LIST ;
typedef TYPE_1__ DHCP_OPTION_LIST ;
typedef TYPE_2__ DHCP_OPTION ;


 int Copy (int *,int*,int) ;


 int DHCP_ID_CLASSLESS_ROUTE ;
 int DHCP_ID_DNS_ADDR ;
 int DHCP_ID_DOMAIN_NAME ;
 int DHCP_ID_GATEWAY_ADDR ;
 int DHCP_ID_HOST_NAME ;
 int DHCP_ID_LEASE_TIME ;
 int DHCP_ID_MESSAGE_TYPE ;
 int DHCP_ID_MS_CLASSLESS_ROUTE ;
 int DHCP_ID_REQUEST_IP_ADDRESS ;
 int DHCP_ID_SERVER_ADDRESS ;
 int DHCP_ID_SUBNET_MASK ;
 int DHCP_ID_WINS_ADDR ;


 int DhcpParseClasslessRouteData (int *,int*,int) ;
 int FreeDhcpOptions (int *) ;
 TYPE_2__* GetDhcpOption (int *,int ) ;
 int MIN (int,int) ;
 int * ParseDhcpOptions (void*,int ) ;
 int READ_UINT (int*) ;
 int Zero (int *,int) ;
 TYPE_1__* ZeroMalloc (int) ;

DHCP_OPTION_LIST *ParseDhcpOptionList(void *data, UINT size)
{
 DHCP_OPTION_LIST *ret;
 LIST *o;
 DHCP_OPTION *a;

 if (data == ((void*)0))
 {
  return ((void*)0);
 }


 o = ParseDhcpOptions(data, size);
 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ZeroMalloc(sizeof(DHCP_OPTION_LIST));


 a = GetDhcpOption(o, DHCP_ID_MESSAGE_TYPE);
 if (a != ((void*)0))
 {
  if (a->Size == 1)
  {
   ret->Opcode = *((UCHAR *)a->Data);
  }
 }

 switch (ret->Opcode)
 {
 case 130:
 case 128:


  a = GetDhcpOption(o, DHCP_ID_REQUEST_IP_ADDRESS);
  if (a != ((void*)0) && a->Size == 4)
  {
   Copy(&ret->RequestedIp, a->Data, 4);
  }

  a = GetDhcpOption(o, DHCP_ID_HOST_NAME);
  if (a != ((void*)0))
  {
   if (a->Size > 1)
   {
    Copy(ret->Hostname, a->Data, MIN(a->Size, sizeof(ret->Hostname) - 1));
   }
  }
  break;

 case 129:
 case 131:

  a = GetDhcpOption(o, DHCP_ID_SUBNET_MASK);
  if (a != ((void*)0) && a->Size >= 4)
  {
   Copy(&ret->SubnetMask, a->Data, 4);
  }


  a = GetDhcpOption(o, DHCP_ID_LEASE_TIME);
  if (a != ((void*)0) && a->Size == 4)
  {
   ret->LeaseTime = READ_UINT(a->Data);
  }


  a = GetDhcpOption(o, DHCP_ID_SERVER_ADDRESS);
  if (a != ((void*)0) && a->Size >= 4)
  {
   Copy(&ret->ServerAddress, a->Data, 4);
  }


  a = GetDhcpOption(o, DHCP_ID_DOMAIN_NAME);
  if (a != ((void*)0) && a->Size >= 1)
  {
   Zero(ret->DomainName, sizeof(ret->DomainName));
   Copy(ret->DomainName, a->Data, MIN(a->Size, sizeof(ret->DomainName) - 1));
  }


  a = GetDhcpOption(o, DHCP_ID_GATEWAY_ADDR);
  if (a != ((void*)0) && a->Size >= 4)
  {
   Copy(&ret->Gateway, a->Data, 4);
  }


  a = GetDhcpOption(o, DHCP_ID_DNS_ADDR);
  if (a != ((void*)0) && a->Size >= 4)
  {
   Copy(&ret->DnsServer, a->Data, 4);

   if (a->Size >= 8)
   {
    Copy(&ret->DnsServer2, ((UCHAR *)a->Data) + 4, 4);
   }
  }


  a = GetDhcpOption(o, DHCP_ID_WINS_ADDR);
  if (a != ((void*)0) && a->Size >= 4)
  {
   Copy(&ret->WinsServer, a->Data, 4);

   if (a->Size >= 8)
   {
    Copy(&ret->WinsServer2, ((UCHAR *)a->Data) + 4, 4);
   }
  }



  a = GetDhcpOption(o, DHCP_ID_CLASSLESS_ROUTE);
  if (a != ((void*)0))
  {
   DhcpParseClasslessRouteData(&ret->ClasslessRoute, a->Data, a->Size);
  }

  a = GetDhcpOption(o, DHCP_ID_MS_CLASSLESS_ROUTE);
  if (a != ((void*)0))
  {
   DhcpParseClasslessRouteData(&ret->ClasslessRoute, a->Data, a->Size);
  }

  break;
 }


 FreeDhcpOptions(o);

 return ret;
}
