
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Msg; int HubName; } ;
typedef TYPE_1__ RPC_MSG ;
typedef int PACK ;


 char* CopyUniToUtf (int ) ;
 int Free (char*) ;
 int PackAddData (int *,char*,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int StrLen (char*) ;

void OutRpcMsg(PACK *p, RPC_MSG *t)
{
 UINT size;
 char *utf8;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 utf8 = CopyUniToUtf(t->Msg);
 size = StrLen(utf8);
 PackAddData(p, "Msg", utf8, size);
 Free(utf8);
}
