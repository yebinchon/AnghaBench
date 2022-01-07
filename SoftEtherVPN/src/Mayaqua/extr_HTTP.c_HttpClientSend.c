
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ip_str ;
typedef int date_str ;
struct TYPE_8__ {int Size; int Buf; } ;
struct TYPE_7__ {int RemoteIP; } ;
typedef TYPE_1__ SOCK ;
typedef int PACK ;
typedef int HTTP_HEADER ;
typedef TYPE_2__ BUF ;


 int AddHttpValue (int *,int ) ;
 int CreateDummyValue (int *) ;
 int FreeBuf (TYPE_2__*) ;
 int FreeHttpHeader (int *) ;
 int GetHttpDateStr (char*,int,int ) ;
 char* HTTP_CONTENT_TYPE2 ;
 char* HTTP_KEEP_ALIVE ;
 int HTTP_VPN_TARGET ;
 int IPToStr (char*,int,int *) ;
 int MAX_SIZE ;
 int * NewHttpHeader (char*,int ,char*) ;
 int NewHttpValue (char*,char*) ;
 TYPE_2__* PackToBuf (int *) ;
 int PostHttp (TYPE_1__*,int *,int ,int ) ;
 int SystemTime64 () ;

bool HttpClientSend(SOCK *s, PACK *p)
{
 BUF *b;
 bool ret;
 HTTP_HEADER *h;
 char date_str[MAX_SIZE];
 char ip_str[MAX_SIZE];


 if (s == ((void*)0) || p == ((void*)0))
 {
  return 0;
 }

 IPToStr(ip_str, sizeof(ip_str), &s->RemoteIP);

 CreateDummyValue(p);

 b = PackToBuf(p);
 if (b == ((void*)0))
 {
  return 0;
 }

 h = NewHttpHeader("POST", HTTP_VPN_TARGET, "HTTP/1.1");

 GetHttpDateStr(date_str, sizeof(date_str), SystemTime64());
 AddHttpValue(h, NewHttpValue("Date", date_str));
 AddHttpValue(h, NewHttpValue("Host", ip_str));
 AddHttpValue(h, NewHttpValue("Keep-Alive", HTTP_KEEP_ALIVE));
 AddHttpValue(h, NewHttpValue("Connection", "Keep-Alive"));
 AddHttpValue(h, NewHttpValue("Content-Type", HTTP_CONTENT_TYPE2));

 ret = PostHttp(s, h, b->Buf, b->Size);

 FreeHttpHeader(h);
 FreeBuf(b);

 return ret;
}
