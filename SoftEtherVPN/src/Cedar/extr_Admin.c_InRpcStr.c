
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {void* String; } ;
typedef TYPE_1__ RPC_STR ;
typedef int PACK ;


 void* CopyStr (char*) ;
 int Free (char*) ;
 char* Malloc (int) ;
 int PackGetStr (int *,char*,char*,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcStr(RPC_STR *t, PACK *p)
{
 UINT size = 65536;
 char *tmp = Malloc(size);

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_STR));
 if (PackGetStr(p, "String", tmp, size) == 0)
 {
  t->String = CopyStr("");
 }
 else
 {
  t->String = CopyStr(tmp);
 }
 Free(tmp);
}
