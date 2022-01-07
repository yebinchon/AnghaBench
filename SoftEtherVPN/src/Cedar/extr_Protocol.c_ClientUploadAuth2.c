
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* Session; } ;
struct TYPE_5__ {int SessionKey; } ;
typedef int SOCK ;
typedef int PACK ;
typedef TYPE_2__ CONNECTION ;


 int FreePack (int *) ;
 int HttpClientSend (int *,int *) ;
 int PackAddClientVersion (int *,TYPE_2__*) ;
 int * PackAdditionalConnect (int ) ;

bool ClientUploadAuth2(CONNECTION *c, SOCK *s)
{
 PACK *p = ((void*)0);

 if (c == ((void*)0))
 {
  return 0;
 }

 p = PackAdditionalConnect(c->Session->SessionKey);

 PackAddClientVersion(p, c);

 if (HttpClientSend(s, p) == 0)
 {
  FreePack(p);
  return 0;
 }
 FreePack(p);

 return 1;
}
