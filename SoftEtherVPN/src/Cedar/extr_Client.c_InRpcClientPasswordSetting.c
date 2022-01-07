
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IsPasswordPresented; int PasswordRemoteOnly; } ;
typedef TYPE_1__ RPC_CLIENT_PASSWORD_SETTING ;
typedef int PACK ;


 scalar_t__ PackGetInt (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcClientPasswordSetting(RPC_CLIENT_PASSWORD_SETTING *a, PACK *p)
{

 if (a == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(a, sizeof(RPC_CLIENT_PASSWORD_SETTING));

 a->IsPasswordPresented = PackGetInt(p, "IsPasswordPresented") == 0 ? 0 : 1;
 a->PasswordRemoteOnly = PackGetInt(p, "PasswordRemoteOnly") == 0 ? 0 : 1;
}
