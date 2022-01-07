
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Name; } ;
typedef TYPE_1__ RPC_DISCONNECT_CONNECTION ;
typedef int PACK ;


 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcDisconnectConnection(RPC_DISCONNECT_CONNECTION *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_DISCONNECT_CONNECTION));
 PackGetStr(p, "Name", t->Name, sizeof(t->Name));
}
