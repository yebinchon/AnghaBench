
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int String; } ;
typedef TYPE_1__ RPC_STR ;
typedef int PACK ;


 int PackAddStr (int *,char*,int ) ;

void OutRpcStr(PACK *p, RPC_STR *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "String", t->String);
}
