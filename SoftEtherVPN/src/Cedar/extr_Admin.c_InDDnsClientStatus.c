
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ErrStr_IPv6; int ErrStr_IPv4; int CurrentIPv6; int CurrentIPv4; int DnsSuffix; int CurrentFqdn; int CurrentHostName; void* Err_IPv6; void* Err_IPv4; } ;
typedef int PACK ;
typedef TYPE_1__ DDNS_CLIENT_STATUS ;


 void* PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetUniStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InDDnsClientStatus(DDNS_CLIENT_STATUS *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(DDNS_CLIENT_STATUS));

 t->Err_IPv4 = PackGetInt(p, "Err_IPv4");
 t->Err_IPv6 = PackGetInt(p, "Err_IPv6");

 PackGetStr(p, "CurrentHostName", t->CurrentHostName, sizeof(t->CurrentHostName));
 PackGetStr(p, "CurrentFqdn", t->CurrentFqdn, sizeof(t->CurrentFqdn));
 PackGetStr(p, "DnsSuffix", t->DnsSuffix, sizeof(t->DnsSuffix));
 PackGetStr(p, "CurrentIPv4", t->CurrentIPv4, sizeof(t->CurrentIPv4));
 PackGetStr(p, "CurrentIPv6", t->CurrentIPv6, sizeof(t->CurrentIPv6));
 PackGetUniStr(p, "ErrStr_IPv4", t->ErrStr_IPv4, sizeof(t->ErrStr_IPv4));
 PackGetUniStr(p, "ErrStr_IPv6", t->ErrStr_IPv6, sizeof(t->ErrStr_IPv6));
}
