
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int UseSecureDeviceId; } ;
struct TYPE_6__ {int DeviceId; } ;
typedef TYPE_1__ RPC_USE_SECURE ;
typedef TYPE_2__ CLIENT ;


 int CiSaveConfigurationFile (TYPE_2__*) ;

bool CtUseSecure(CLIENT *c, RPC_USE_SECURE *sec)
{

 if (c == ((void*)0) || sec == ((void*)0))
 {
  return 0;
 }
 c->UseSecureDeviceId = sec->DeviceId;

 CiSaveConfigurationFile(c);

 return 1;
}
