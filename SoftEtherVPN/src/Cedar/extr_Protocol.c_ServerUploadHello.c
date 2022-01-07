
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Err; int FirstSock; int ServerStr; int ServerBuild; int ServerVer; int Random; } ;
typedef int PACK ;
typedef TYPE_1__ CONNECTION ;


 int ERR_DISCONNECTED ;
 int FreePack (int *) ;
 int HttpServerSend (int ,int *) ;
 int * PackHello (int ,int ,int ,int ) ;
 int Rand (int ,int ) ;
 int SHA1_SIZE ;

bool ServerUploadHello(CONNECTION *c)
{
 PACK *p;

 if (c == ((void*)0))
 {
  return 0;
 }


 Rand(c->Random, SHA1_SIZE);

 p = PackHello(c->Random, c->ServerVer, c->ServerBuild, c->ServerStr);
 if (HttpServerSend(c->FirstSock, p) == 0)
 {
  FreePack(p);
  c->Err = ERR_DISCONNECTED;
  return 0;
 }

 FreePack(p);

 return 1;
}
