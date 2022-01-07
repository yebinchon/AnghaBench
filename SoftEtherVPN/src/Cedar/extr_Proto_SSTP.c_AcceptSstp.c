
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int date_str ;
struct TYPE_3__ {int Cedar; int * FirstSock; } ;
typedef int SOCK_EVENT ;
typedef int SOCK ;
typedef int HTTP_HEADER ;
typedef TYPE_1__ CONNECTION ;


 int AddHttpValue (int *,int ) ;
 int Debug (char*) ;
 int Disconnect (int *) ;
 int FreeHttpHeader (int *) ;
 int GetHttpDateStr (char*,int,int ) ;
 int INFINITE ;
 int JoinSockToSockEvent (int *,int *) ;
 int MAX_SIZE ;
 int * NewHttpHeader (char*,char*,char*) ;
 int NewHttpValue (char*,char*) ;
 int * NewSockEvent () ;
 int PostHttp (int *,int *,int *,int ) ;
 int ProcessSstpHttps (int ,int *,int *) ;
 int ReleaseSockEvent (int *) ;
 int SetTimeout (int *,int ) ;
 int SystemTime64 () ;

bool AcceptSstp(CONNECTION *c)
{
 SOCK *s;
 HTTP_HEADER *h;
 char date_str[MAX_SIZE];
 bool ret;
 bool ret2 = 0;
 SOCK_EVENT *se;

 if (c == ((void*)0))
 {
  return 0;
 }

 s = c->FirstSock;

 GetHttpDateStr(date_str, sizeof(date_str), SystemTime64());


 h = NewHttpHeader("HTTP/1.1", "200", "OK");
 AddHttpValue(h, NewHttpValue("Content-Length", "18446744073709551615"));
 AddHttpValue(h, NewHttpValue("Server", "Microsoft-HTTPAPI/2.0"));
 AddHttpValue(h, NewHttpValue("Date", date_str));

 ret = PostHttp(s, h, ((void*)0), 0);

 FreeHttpHeader(h);

 if (ret)
 {
  SetTimeout(s, INFINITE);

  se = NewSockEvent();

  JoinSockToSockEvent(s, se);

  Debug("ProcessSstpHttps Start.\n");
  ret2 = ProcessSstpHttps(c->Cedar, s, se);
  Debug("ProcessSstpHttps End.\n");

  ReleaseSockEvent(se);
 }

 Disconnect(s);

 return ret2;
}
