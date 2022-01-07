
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int Msg; int HubName; } ;
typedef TYPE_1__ RPC_MSG ;
typedef int PACK ;


 int CopyUtfToUni (char*) ;
 int Free (char*) ;
 int PackGetData (int *,char*,char*) ;
 scalar_t__ PackGetDataSize (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;
 char* ZeroMalloc (scalar_t__) ;

void InRpcMsg(RPC_MSG *t, PACK *p)
{
 UINT size;
 char *utf8;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_MSG));

 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 size = PackGetDataSize(p, "Msg");
 utf8 = ZeroMalloc(size + 8);
 PackGetData(p, "Msg", utf8);
 t->Msg = CopyUtfToUni(utf8);
 Free(utf8);
}
