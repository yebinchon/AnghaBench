
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int url ;
struct TYPE_9__ {char* Buf; } ;
struct TYPE_8__ {int Path; int IsSsl; int Port; char* Method; char* Protocol; char* Referer; char* UserAgent; int Hostname; } ;
typedef TYPE_1__ HTTPLOG ;
typedef TYPE_2__ BUF ;


 int AddLogBufToStr (TYPE_2__*,char*,char*) ;
 char* CopyStr (char*) ;
 int Format (char*,int,char*,int ,...) ;
 int FreeBuf (TYPE_2__*) ;
 int MAX_SIZE ;
 TYPE_2__* NewBuf () ;
 scalar_t__ StartWith (int,char*) ;
 int StrCpy (char*,int,int) ;
 int WriteBuf (TYPE_2__*,char*,int) ;

char *BuildHttpLogStr(HTTPLOG *h)
{
 BUF *b;
 char url[MAX_SIZE];
 char nullchar = 0;
 char *ret;

 if (h == ((void*)0))
 {
  return CopyStr("");
 }

 b = NewBuf();

 if (StartWith(h->Path, "http://") || StartWith(h->Path, "https://"))
 {
  StrCpy(url, sizeof(url), h->Path);
 }
 else
 {

  if (h->IsSsl == 0)
  {
   if (h->Port == 80)
   {
    Format(url, sizeof(url), "http://%s%s",
     h->Hostname, h->Path);
   }
   else
   {
    Format(url, sizeof(url), "http://%s:%u%s",
     h->Hostname, h->Port, h->Path);
   }
  }
  else
  {
   if (h->Port == 443)
   {
    Format(url, sizeof(url), "https://%s/",
     h->Hostname);
   }
   else
   {
    Format(url, sizeof(url), "https://%s:%u/",
     h->Hostname, h->Port);
   }
  }
 }

 AddLogBufToStr(b, "HttpMethod", h->Method);
 AddLogBufToStr(b, "HttpUrl", url);
 AddLogBufToStr(b, "HttpProtocol", h->Protocol);
 AddLogBufToStr(b, "HttpReferer", h->Referer);
 AddLogBufToStr(b, "HttpUserAgent", h->UserAgent);

 WriteBuf(b, &nullchar, 1);

 ret = CopyStr(b->Buf);

 FreeBuf(b);

 return ret;
}
