
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Lock; int InternetSetting; int AzureCertHash; int CurrentAzureSignature; int CurrentAzureTimestamp; int CurrentAzureIp; int CurrentIPv6; int CurrentIPv4; int DnsSuffix; int CurrentFqdn; int CurrentHostName; int Err_IPv6; int Err_IPv4; } ;
struct TYPE_6__ {int Err_IPv6; int ErrStr_IPv6; int Err_IPv4; int ErrStr_IPv4; int InternetSetting; int AzureCertHash; int CurrentAzureSignature; int CurrentAzureTimestamp; int CurrentAzureIp; int CurrentIPv6; int CurrentIPv4; int DnsSuffix; int CurrentFqdn; int CurrentHostName; } ;
typedef int INTERNET_SETTING ;
typedef TYPE_1__ DDNS_CLIENT_STATUS ;
typedef TYPE_2__ DDNS_CLIENT ;


 int Copy (int *,int *,int) ;
 int Lock (int ) ;
 int StrCpy (int ,int,int ) ;
 int UniStrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int Zero (TYPE_1__*,int) ;
 int _E (int ) ;

void DCGetStatus(DDNS_CLIENT *c, DDNS_CLIENT_STATUS *st)
{

 if (c == ((void*)0) || st == ((void*)0))
 {
  return;
 }

 Zero(st, sizeof(DDNS_CLIENT_STATUS));

 Lock(c->Lock);
 {
  st->Err_IPv4 = c->Err_IPv4;
  st->Err_IPv6 = c->Err_IPv6;

  StrCpy(st->CurrentHostName, sizeof(st->CurrentHostName), c->CurrentHostName);
  StrCpy(st->CurrentFqdn, sizeof(st->CurrentFqdn), c->CurrentFqdn);
  StrCpy(st->DnsSuffix, sizeof(st->DnsSuffix), c->DnsSuffix);
  StrCpy(st->CurrentIPv4, sizeof(st->CurrentIPv4), c->CurrentIPv4);
  StrCpy(st->CurrentIPv6, sizeof(st->CurrentIPv6), c->CurrentIPv6);

  StrCpy(st->CurrentAzureIp, sizeof(st->CurrentAzureIp), c->CurrentAzureIp);
  st->CurrentAzureTimestamp = c->CurrentAzureTimestamp;
  StrCpy(st->CurrentAzureSignature, sizeof(st->CurrentAzureSignature), c->CurrentAzureSignature);
  StrCpy(st->AzureCertHash, sizeof(st->AzureCertHash), c->AzureCertHash);

  Copy(&st->InternetSetting, &c->InternetSetting, sizeof(INTERNET_SETTING));
 }
 Unlock(c->Lock);

 UniStrCpy(st->ErrStr_IPv4, sizeof(st->ErrStr_IPv4), _E(st->Err_IPv4));
 UniStrCpy(st->ErrStr_IPv6, sizeof(st->ErrStr_IPv6), _E(st->Err_IPv6));
}
