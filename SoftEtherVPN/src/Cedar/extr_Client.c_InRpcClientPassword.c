
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int PasswordRemoteOnly; int Password; } ;
typedef TYPE_1__ RPC_CLIENT_PASSWORD ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcClientPassword(RPC_CLIENT_PASSWORD *pw, PACK *p)
{

 if (pw == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(pw, sizeof(RPC_CLIENT_PASSWORD));
 PackGetStr(p, "Password", pw->Password, sizeof(pw->Password));
 pw->PasswordRemoteOnly = PackGetInt(p, "PasswordRemoteOnly");
}
