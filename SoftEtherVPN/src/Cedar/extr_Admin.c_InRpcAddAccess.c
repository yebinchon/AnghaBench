
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Access; int HubName; } ;
typedef TYPE_1__ RPC_ADD_ACCESS ;
typedef int PACK ;


 int InRpcAccess (int *,int *) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcAddAccess(RPC_ADD_ACCESS *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ADD_ACCESS));

 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 InRpcAccess(&t->Access, p);
}
