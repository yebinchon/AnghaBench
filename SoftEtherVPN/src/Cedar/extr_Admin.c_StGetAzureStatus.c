
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_12__ {TYPE_1__* Server; } ;
struct TYPE_11__ {int Lock; int IsEnabled; int IsConnected; } ;
struct TYPE_10__ {int IsEnabled; int IsConnected; } ;
struct TYPE_9__ {TYPE_3__* AzureClient; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_AZURE_STATUS ;
typedef int CEDAR ;
typedef TYPE_3__ AZURE_CLIENT ;
typedef TYPE_4__ ADMIN ;


 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int Lock (int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;
 int SiIsAzureSupported (TYPE_1__*) ;
 int Unlock (int ) ;
 int Zero (TYPE_2__*,int) ;

UINT StGetAzureStatus(ADMIN *a, RPC_AZURE_STATUS *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 AZURE_CLIENT *ac;

 SERVER_ADMIN_ONLY;
 NO_SUPPORT_FOR_BRIDGE;

 if (SiIsAzureSupported(s) == 0)
 {
  return ERR_NOT_SUPPORTED;
 }

 ac = s->AzureClient;
 if (ac == ((void*)0))
 {
  return ERR_NOT_SUPPORTED;
 }

 Zero(t, sizeof(RPC_AZURE_STATUS));

 Lock(ac->Lock);
 {
  t->IsConnected = ac->IsConnected;
  t->IsEnabled = ac->IsEnabled;
 }
 Unlock(ac->Lock);

 return ERR_NO_ERROR;
}
