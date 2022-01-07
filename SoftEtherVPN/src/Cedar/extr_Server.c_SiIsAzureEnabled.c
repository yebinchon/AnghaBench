
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int EnableVpnAzure; int * AzureClient; } ;
typedef TYPE_1__ SERVER ;



bool SiIsAzureEnabled(SERVER *s)
{

 if (s == ((void*)0))
 {
  return 0;
 }

 if (s->AzureClient == ((void*)0))
 {
  return 0;
 }

 return s->EnableVpnAzure;
}
