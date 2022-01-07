
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Access; int HubName; } ;
typedef TYPE_1__ RPC_ADD_ACCESS ;
typedef int PACK ;


 int OutRpcAccess (int *,int *) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcAddAccess(PACK *p, RPC_ADD_ACCESS *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 OutRpcAccess(p, &t->Access);
}
