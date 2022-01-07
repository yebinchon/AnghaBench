
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmp ;
typedef int UINT ;
struct TYPE_8__ {int * FirstSock; } ;
struct TYPE_7__ {TYPE_3__* Connection; } ;
struct TYPE_6__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int SOCK ;
typedef TYPE_2__ SESSION ;
typedef int PACK ;


 int CopyStr (char*) ;
 int FreePack (int *) ;
 int * HttpClientRecv (int *) ;
 int HttpClientSend (int *,int *) ;
 int MAX_SIZE ;
 int * NewPack () ;
 int PackAddClientVersion (int *,TYPE_3__*) ;
 int PackAddStr (int *,char*,char*) ;
 int PackGetInt (int *,char*) ;
 scalar_t__ PackGetStrEx (int *,char*,char*,int,int) ;
 int SetTimeout (int *,int) ;
 void* ZeroMalloc (int) ;

TOKEN_LIST *EnumHub(SESSION *s)
{
 SOCK *sock;
 TOKEN_LIST *ret;
 PACK *p;
 UINT num;
 UINT i;

 if (s == ((void*)0) || s->Connection == ((void*)0))
 {
  return ((void*)0);
 }

 sock = s->Connection->FirstSock;
 if (sock == ((void*)0))
 {
  return ((void*)0);
 }


 SetTimeout(sock, 10000);

 p = NewPack();
 PackAddStr(p, "method", "enum_hub");

 PackAddClientVersion(p, s->Connection);

 if (HttpClientSend(sock, p) == 0)
 {
  FreePack(p);
  return ((void*)0);
 }
 FreePack(p);

 p = HttpClientRecv(sock);
 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 num = PackGetInt(p, "NumHub");
 ret = ZeroMalloc(sizeof(TOKEN_LIST));
 ret->NumTokens = num;
 ret->Token = ZeroMalloc(sizeof(char *) * num);
 for (i = 0;i < num;i++)
 {
  char tmp[MAX_SIZE];
  if (PackGetStrEx(p, "HubName", tmp, sizeof(tmp), i))
  {
   ret->Token[i] = CopyStr(tmp);
  }
 }
 FreePack(p);

 return ret;
}
