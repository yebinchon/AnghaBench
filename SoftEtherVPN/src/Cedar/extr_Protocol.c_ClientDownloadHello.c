
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int Random; int * FirstSock; void* Err; int ServerStr; int ServerBuild; int ServerVer; } ;
typedef int SOCK ;
typedef int PACK ;
typedef TYPE_1__ CONNECTION ;


 int Copy (int ,int *,int) ;
 void* ERR_SERVER_IS_NOT_VPN ;
 int FreePack (int *) ;
 void* GetErrorFromPack (int *) ;
 int GetHello (int *,int *,int *,int *,int ,int) ;
 int * HttpClientRecv (int *) ;
 int SHA1_SIZE ;

bool ClientDownloadHello(CONNECTION *c, SOCK *s)
{
 PACK *p;
 UINT err;
 UCHAR random[SHA1_SIZE];

 if (c == ((void*)0))
 {
  return 0;
 }


 p = HttpClientRecv(s);
 if (p == ((void*)0))
 {
  c->Err = ERR_SERVER_IS_NOT_VPN;
  return 0;
 }

 if (err = GetErrorFromPack(p))
 {

  c->Err = err;
  FreePack(p);
  return 0;
 }


 if (GetHello(p, random, &c->ServerVer, &c->ServerBuild, c->ServerStr, sizeof(c->ServerStr)) == 0)
 {
  c->Err = ERR_SERVER_IS_NOT_VPN;
  FreePack(p);
  return 0;
 }

 if (c->FirstSock == s)
 {
  Copy(c->Random, random, SHA1_SIZE);
 }

 FreePack(p);

 return 1;
}
