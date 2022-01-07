
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ClientBuild; int ClientVer; int ClientStr; } ;
typedef int PACK ;
typedef TYPE_1__ CONNECTION ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void PackAddClientVersion(PACK *p, CONNECTION *c)
{

 if (p == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "client_str", c->ClientStr);
 PackAddInt(p, "client_ver", c->ClientVer);
 PackAddInt(p, "client_build", c->ClientBuild);
}
