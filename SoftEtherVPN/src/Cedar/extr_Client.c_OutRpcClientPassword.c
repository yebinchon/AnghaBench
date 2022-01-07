
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PasswordRemoteOnly; int Password; } ;
typedef TYPE_1__ RPC_CLIENT_PASSWORD ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcClientPassword(PACK *p, RPC_CLIENT_PASSWORD *pw)
{

 if (pw == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "Password", pw->Password);
 PackAddInt(p, "PasswordRemoteOnly", pw->PasswordRemoteOnly);
}
