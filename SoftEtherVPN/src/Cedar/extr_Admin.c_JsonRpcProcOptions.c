
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int JsonRpcAuthed; int Listener; } ;
typedef int SOCK ;
typedef int HTTP_HEADER ;
typedef TYPE_1__ CONNECTION ;


 int AdminWebSendBody (int *,int,char*,int *,int ,int *,int *,int *,int *) ;
 int RemoveDosEntry (int ,int *) ;

void JsonRpcProcOptions(CONNECTION *c, SOCK *s, HTTP_HEADER *h, char *url_target)
{
 if (c == ((void*)0) || s == ((void*)0) || h == ((void*)0) || url_target == ((void*)0))
 {
  return;
 }

 c->JsonRpcAuthed = 1;


 RemoveDosEntry(c->Listener, s);


 AdminWebSendBody(s, 200, "OK", ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), h);
}
