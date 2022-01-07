
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int AzureClient; } ;
typedef TYPE_1__ SERVER ;
typedef int DDNS_CLIENT_STATUS ;


 int AcApplyCurrentConfig (int ,int *) ;

void SiApplyAzureConfig(SERVER *s, DDNS_CLIENT_STATUS *ddns_status)
{

 if (s == ((void*)0))
 {
  return;
 }

 AcApplyCurrentConfig(s->AzureClient, ddns_status);
}
