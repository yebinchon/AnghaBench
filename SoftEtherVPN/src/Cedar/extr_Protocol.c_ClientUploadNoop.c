
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FirstSock; } ;
typedef int PACK ;
typedef TYPE_1__ CONNECTION ;


 int FreePack (int *) ;
 int * HttpClientRecv (int ) ;
 int HttpClientSend (int ,int *) ;
 int PackAddInt (int *,char*,int) ;
 int * PackError (int ) ;

void ClientUploadNoop(CONNECTION *c)
{
 PACK *p;

 if (c == ((void*)0))
 {
  return;
 }

 p = PackError(0);
 PackAddInt(p, "noop", 1);
 (void)HttpClientSend(c->FirstSock, p);
 FreePack(p);

 p = HttpClientRecv(c->FirstSock);
 if (p != ((void*)0))
 {
  FreePack(p);
 }
}
