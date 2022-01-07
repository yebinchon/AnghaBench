
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ErrStr_IPv6; int ErrStr_IPv4; int CurrentIPv6; int CurrentIPv4; int DnsSuffix; int CurrentFqdn; int CurrentHostName; int Err_IPv6; int Err_IPv4; } ;
typedef int PACK ;
typedef TYPE_1__ DDNS_CLIENT_STATUS ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddUniStr (int *,char*,int ) ;

void OutDDnsClientStatus(PACK *p, DDNS_CLIENT_STATUS *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "Err_IPv4", t->Err_IPv4);
 PackAddInt(p, "Err_IPv6", t->Err_IPv6);
 PackAddStr(p, "CurrentHostName", t->CurrentHostName);
 PackAddStr(p, "CurrentFqdn", t->CurrentFqdn);
 PackAddStr(p, "DnsSuffix", t->DnsSuffix);
 PackAddStr(p, "CurrentIPv4", t->CurrentIPv4);
 PackAddStr(p, "CurrentIPv6", t->CurrentIPv6);
 PackAddUniStr(p, "ErrStr_IPv4", t->ErrStr_IPv4);
 PackAddUniStr(p, "ErrStr_IPv6", t->ErrStr_IPv6);
}
