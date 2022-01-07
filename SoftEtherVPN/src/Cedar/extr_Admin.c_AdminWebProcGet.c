
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int url ;
typedef int query_string ;
typedef int UINT ;
struct TYPE_4__ {int JsonRpcAuthed; int Listener; int Cedar; } ;
typedef int SOCK ;
typedef int HTTP_HEADER ;
typedef TYPE_1__ CONNECTION ;
typedef int ADMIN ;


 int AdminWebHandleFileRequest (int *,TYPE_1__*,int *,int *,char*,char*,char*,char*) ;
 int AdminWebSendUnauthorized (int *,int *) ;
 int Free (int *) ;
 int INFINITE ;
 int * JsonRpcAuthLogin (int ,int *,int *) ;
 int MAX_PATH ;
 int MAX_SIZE ;
 int RemoveDosEntry (int ,int *) ;
 int SearchStr (char*,char*,int ) ;
 int StrCpy (char*,int,char*) ;
 int Zero (char*,int) ;

void AdminWebProcGet(CONNECTION *c, SOCK *s, HTTP_HEADER *h, char *url_target)
{
 ADMIN *a;
 char url[MAX_PATH];
 char query_string[MAX_SIZE];
 UINT i;
 if (c == ((void*)0) || s == ((void*)0) || h == ((void*)0) || url_target == ((void*)0))
 {
  return;
 }

 a = JsonRpcAuthLogin(c->Cedar, s, h);
 if (a == ((void*)0))
 {
  AdminWebSendUnauthorized(s, h);
  return;
 }

 c->JsonRpcAuthed = 1;

 RemoveDosEntry(c->Listener, s);



 StrCpy(url, sizeof(url), url_target);
 Zero(query_string, sizeof(query_string));
 i = SearchStr(url, "?", 0);
 if (i != INFINITE)
 {
  StrCpy(query_string, sizeof(query_string), url + i + 1);
  url[i] = 0;
 }

 AdminWebHandleFileRequest(a, c, s, h, url, query_string, "/admin", "|wwwroot/admin");

 Free(a);
}
