
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int date_str ;
struct TYPE_4__ {int Size; int Buf; } ;
typedef int SOCK ;
typedef int PACK ;
typedef int HTTP_HEADER ;
typedef TYPE_1__ BUF ;


 int AddHttpValue (int *,int ) ;
 int CreateDummyValue (int *) ;
 int FreeBuf (TYPE_1__*) ;
 int FreeHttpHeader (int *) ;
 int GetHttpDateStr (char*,int,int ) ;
 char* HTTP_CONTENT_TYPE2 ;
 char* HTTP_KEEP_ALIVE ;
 int MAX_SIZE ;
 int * NewHttpHeader (char*,char*,char*) ;
 int NewHttpValue (char*,char*) ;
 TYPE_1__* PackToBuf (int *) ;
 int PostHttp (int *,int *,int ,int ) ;
 int SystemTime64 () ;

bool HttpServerSend(SOCK *s, PACK *p)
{
 BUF *b;
 bool ret;
 HTTP_HEADER *h;
 char date_str[MAX_SIZE];

 if (s == ((void*)0) || p == ((void*)0))
 {
  return 0;
 }

 CreateDummyValue(p);

 b = PackToBuf(p);
 if (b == ((void*)0))
 {
  return 0;
 }

 h = NewHttpHeader("HTTP/1.1", "200", "OK");

 GetHttpDateStr(date_str, sizeof(date_str), SystemTime64());
 AddHttpValue(h, NewHttpValue("Date", date_str));
 AddHttpValue(h, NewHttpValue("Keep-Alive", HTTP_KEEP_ALIVE));
 AddHttpValue(h, NewHttpValue("Connection", "Keep-Alive"));
 AddHttpValue(h, NewHttpValue("Content-Type", HTTP_CONTENT_TYPE2));

 ret = PostHttp(s, h, b->Buf, b->Size);

 FreeHttpHeader(h);
 FreeBuf(b);

 return ret;
}
