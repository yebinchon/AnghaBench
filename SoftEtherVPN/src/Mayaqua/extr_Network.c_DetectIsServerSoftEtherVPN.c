
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tmp ;
typedef int ip_str ;
typedef int UINT ;
struct TYPE_12__ {int Size; int Buf; } ;
struct TYPE_11__ {int RemoteIP; } ;
typedef TYPE_1__ SOCK ;
typedef int HTTP_HEADER ;
typedef TYPE_2__ BUF ;


 int AddHttpValue (int *,int ) ;
 int Copy (char*,int ,int) ;
 char* DEFAULT_USER_AGENT ;
 int Free (void*) ;
 int FreeBuf (TYPE_2__*) ;
 int FreeHttpHeader (int *) ;
 int GetContentLength (int *) ;
 char* HTTP_KEEP_ALIVE ;
 char* HttpHeaderToStr (int *) ;
 int IPToStr (char*,int,int *) ;
 scalar_t__ InStr (char*,int ) ;
 int MAX_SIZE ;
 int MIN (int,int) ;
 void* Malloc (int) ;
 TYPE_2__* NewBuf () ;
 int * NewHttpHeaderEx (char*,char*,char*,int) ;
 int NewHttpValue (char*,char*) ;
 int Recv (TYPE_1__*,void*,int,int) ;
 int * RecvHttpHeader (TYPE_1__*) ;
 int SeekBuf (TYPE_2__*,int ,int ) ;
 int SendAll (TYPE_1__*,char*,int ,int) ;
 scalar_t__ StartWith (char*,int ) ;
 int StrLen (char*) ;
 int WriteBuf (TYPE_2__*,void*,int) ;
 int Zero (char*,int) ;
 int http_detect_server_startwith ;
 int http_detect_server_tag_future ;

bool DetectIsServerSoftEtherVPN(SOCK *s)
{
 HTTP_HEADER *h;
 char ip_str[MAX_SIZE];
 char *send_str;
 UINT content_len;
 BUF *recv_buf;
 void *socket_buffer;
 UINT socket_buffer_size = 32768;
 bool ok = 0;

 if (s == ((void*)0))
 {
  return 0;
 }

 IPToStr(ip_str, sizeof(ip_str), &s->RemoteIP);


 h = NewHttpHeaderEx("GET", "/", "HTTP/1.1", 1);
 AddHttpValue(h, NewHttpValue("X-VPN", "1"));
 AddHttpValue(h, NewHttpValue("Host", ip_str));
 AddHttpValue(h, NewHttpValue("Keep-Alive", HTTP_KEEP_ALIVE));
 AddHttpValue(h, NewHttpValue("Connection", "Keep-Alive"));
 AddHttpValue(h, NewHttpValue("Accept-Language", "ja"));
 AddHttpValue(h, NewHttpValue("User-Agent", DEFAULT_USER_AGENT));
 AddHttpValue(h, NewHttpValue("Pragma", "no-cache"));
 AddHttpValue(h, NewHttpValue("Cache-Control", "no-cache"));



 send_str = HttpHeaderToStr(h);
 FreeHttpHeader(h);


 if (SendAll(s, send_str, StrLen(send_str), 1) == 0)
 {
  Free(send_str);
  return 0;
 }

 Free(send_str);


 h = RecvHttpHeader(s);
 if (h == ((void*)0))
 {
  return 0;
 }


 content_len = GetContentLength(h);
 FreeHttpHeader(h);

 if (content_len == 0 || content_len >= (1024 * 1024))
 {
  return 0;
 }


 recv_buf = NewBuf();
 socket_buffer = Malloc(socket_buffer_size);

 while (1)
 {
  UINT recvsize = MIN(socket_buffer_size, content_len - recv_buf->Size);
  UINT size;

  if (recvsize == 0)
  {
   ok = 1;
   break;
  }

  size = Recv(s, socket_buffer, recvsize, 1);
  if (size == 0)
  {

   break;
  }

  WriteBuf(recv_buf, socket_buffer, size);
 }

 SeekBuf(recv_buf, 0, 0);
 Free(socket_buffer);

 if (ok)
 {

  char tmp[1024];

  Zero(tmp, sizeof(tmp));

  Copy(tmp, recv_buf->Buf, MIN(recv_buf->Size, (sizeof(tmp) - 1)));

  ok = 0;

  if (StartWith(tmp, http_detect_server_startwith))
  {
   ok = 1;
  }
  else if (InStr(tmp, http_detect_server_tag_future))
  {
   ok = 1;
  }
 }

 FreeBuf(recv_buf);

 return ok;
}
