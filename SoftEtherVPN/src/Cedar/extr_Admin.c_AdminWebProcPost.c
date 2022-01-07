
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int url ;
typedef int query_string ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {scalar_t__ MaxJsonRpcRecvSize; } ;
typedef TYPE_1__ UCHAR ;
struct TYPE_22__ {int JsonRpcAuthed; int Listener; int Cedar; } ;
struct TYPE_21__ {int SecureMode; } ;
typedef TYPE_2__ SOCK ;
typedef int HTTP_HEADER ;
typedef TYPE_3__ CONNECTION ;
typedef TYPE_1__ ADMIN ;


 int AdminWebHandleFileRequest (TYPE_1__*,TYPE_3__*,TYPE_2__*,int *,char*,char*,char*,char*) ;
 int AdminWebSendUnauthorized (TYPE_2__*,int *) ;
 int Disconnect (TYPE_2__*) ;
 int Free (TYPE_1__*) ;
 scalar_t__ INFINITE ;
 TYPE_1__* JsonRpcAuthLogin (int ,TYPE_2__*,int *) ;
 int MAX_PATH ;
 int MAX_SIZE ;
 scalar_t__ RecvAll (TYPE_2__*,TYPE_1__*,scalar_t__,int ) ;
 int RecvAllWithDiscard (TYPE_2__*,scalar_t__,int ) ;
 int RemoveDosEntry (int ,TYPE_2__*) ;
 scalar_t__ SearchStr (char*,char*,int ) ;
 int StrCpy (char*,int,char*) ;
 int Zero (char*,int) ;
 TYPE_1__* ZeroMalloc (scalar_t__) ;

void AdminWebProcPost(CONNECTION *c, SOCK *s, HTTP_HEADER *h, UINT post_data_size, char *url_target)
{
 ADMIN *a;
 UCHAR *data;
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
  RecvAllWithDiscard(s, post_data_size, s->SecureMode);
  AdminWebSendUnauthorized(s, h);
  return;
 }

 if (post_data_size > a->MaxJsonRpcRecvSize)
 {
  Disconnect(s);
  return;
 }

 data = ZeroMalloc(post_data_size + 1);

 if (RecvAll(s, data, post_data_size, s->SecureMode))
 {
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
 }

 Free(data);
 Free(a);
}
