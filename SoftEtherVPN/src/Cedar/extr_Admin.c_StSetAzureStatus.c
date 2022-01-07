
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {TYPE_1__* Server; } ;
struct TYPE_10__ {int IsEnabled; } ;
struct TYPE_9__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_AZURE_STATUS ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;
 int SiIsAzureSupported (TYPE_1__*) ;
 int SiSetAzureEnable (TYPE_1__*,int ) ;

UINT StSetAzureStatus(ADMIN *a, RPC_AZURE_STATUS *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;

 SERVER_ADMIN_ONLY;
 NO_SUPPORT_FOR_BRIDGE;

 if (SiIsAzureSupported(s) == 0)
 {
  return ERR_NOT_SUPPORTED;
 }

 SiSetAzureEnable(s, t->IsEnabled);

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
