
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PasswordRemoteOnly; int IsPasswordPresented; } ;
typedef TYPE_1__ RPC_CLIENT_PASSWORD_SETTING ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;

void OutRpcClientPasswordSetting(PACK *p, RPC_CLIENT_PASSWORD_SETTING *a)
{

 if (a == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "IsPasswordPresented", a->IsPasswordPresented);
 PackAddInt(p, "PasswordRemoteOnly", a->PasswordRemoteOnly);
}
