
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int PlainTextPassword; int HashedPassword; } ;
typedef TYPE_1__ RPC_SET_PASSWORD ;
typedef int PACK ;


 int PackGetData2 (int *,char*,int ,int) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcSetPassword(RPC_SET_PASSWORD *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_SET_PASSWORD));
 PackGetData2(p, "HashedPassword", t->HashedPassword, sizeof(t->HashedPassword));
 PackGetStr(p, "PlainTextPassword", t->PlainTextPassword, sizeof(t->PlainTextPassword));
}
