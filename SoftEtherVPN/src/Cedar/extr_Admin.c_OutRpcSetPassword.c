
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PlainTextPassword; int HashedPassword; } ;
typedef TYPE_1__ RPC_SET_PASSWORD ;
typedef int PACK ;


 int PackAddData (int *,char*,int ,int) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcSetPassword(PACK *p, RPC_SET_PASSWORD *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddData(p, "HashedPassword", t->HashedPassword, sizeof(t->HashedPassword));
 PackAddStr(p, "PlainTextPassword", t->PlainTextPassword);
}
