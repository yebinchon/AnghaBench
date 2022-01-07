
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Name; int HubName; } ;
typedef TYPE_1__ RPC_DELETE_SESSION ;
typedef int PACK ;


 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcDeleteSession(RPC_DELETE_SESSION *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_DELETE_SESSION));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 PackGetStr(p, "Name", t->Name, sizeof(t->Name));
}
