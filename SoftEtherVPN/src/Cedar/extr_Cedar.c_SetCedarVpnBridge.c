
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Bridge; int ServerStr; } ;
typedef TYPE_1__ CEDAR ;


 int CEDAR_BRIDGE_STR ;
 int CopyStr (int ) ;
 int Free (int ) ;

void SetCedarVpnBridge(CEDAR *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 c->Bridge = 1;

 Free(c->ServerStr);
 c->ServerStr = CopyStr(CEDAR_BRIDGE_STR);
}
