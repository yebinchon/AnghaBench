
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_15__ {int Version; int Target; int Method; } ;
struct TYPE_14__ {int Data; } ;
struct TYPE_13__ {int SecureMode; } ;
typedef TYPE_1__ SOCK ;
typedef int PACK ;
typedef TYPE_2__ HTTP_VALUE ;
typedef TYPE_3__ HTTP_HEADER ;
typedef int BUF ;


 int * BufToPack (int *) ;
 int Debug (char*) ;
 int Free (int *) ;
 int FreeBuf (int *) ;
 int FreeHttpHeader (TYPE_3__*) ;
 int FreePack (int *) ;
 scalar_t__ GetContentLength (TYPE_3__*) ;
 TYPE_2__* GetHttpValue (TYPE_3__*,char*) ;
 char* HTTP_CONTENT_TYPE2 ;
 scalar_t__ HTTP_PACK_MAX_SIZE ;
 char* HTTP_VPN_TARGET ;
 int HttpServerSend (TYPE_1__*,int *) ;
 scalar_t__ MAX_NOOP_PER_SESSION ;
 int * MallocEx (scalar_t__,int) ;
 int * NewBuf () ;
 int PackAddInt (int *,char*,int) ;
 int * PackError (int ) ;
 scalar_t__ PackGetInt (int *,char*) ;
 int RecvAll (TYPE_1__*,int *,scalar_t__,int ) ;
 TYPE_3__* RecvHttpHeader (TYPE_1__*) ;
 int SeekBuf (int *,int ,int ) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int WriteBuf (int *,int *,scalar_t__) ;

PACK *HttpServerRecvEx(SOCK *s, UINT max_data_size)
{
 BUF *b;
 PACK *p;
 HTTP_HEADER *h;
 UINT size;
 UCHAR *tmp;
 HTTP_VALUE *v;
 UINT num_noop = 0;
 if (max_data_size == 0) max_data_size = HTTP_PACK_MAX_SIZE;

 if (s == ((void*)0))
 {
  return ((void*)0);
 }

START:
 h = RecvHttpHeader(s);
 if (h == ((void*)0))
 {
  goto BAD_REQUEST;
 }

 if (StrCmpi(h->Method, "POST") != 0 ||
  StrCmpi(h->Target, HTTP_VPN_TARGET) != 0 ||
  StrCmpi(h->Version, "HTTP/1.1") != 0)
 {
  FreeHttpHeader(h);
  goto BAD_REQUEST;
 }

 v = GetHttpValue(h, "Content-Type");
 if (v == ((void*)0) || StrCmpi(v->Data, HTTP_CONTENT_TYPE2) != 0)
 {
  FreeHttpHeader(h);
  goto BAD_REQUEST;
 }

 size = GetContentLength(h);
 if (size == 0 || (size > max_data_size))
 {
  FreeHttpHeader(h);
  goto BAD_REQUEST;
 }

 tmp = MallocEx(size, 1);
 if (RecvAll(s, tmp, size, s->SecureMode) == 0)
 {
  Free(tmp);
  FreeHttpHeader(h);
  return ((void*)0);
 }

 b = NewBuf();
 WriteBuf(b, tmp, size);
 Free(tmp);
 FreeHttpHeader(h);

 SeekBuf(b, 0, 0);
 p = BufToPack(b);
 FreeBuf(b);


 if (PackGetInt(p, "noop") != 0)
 {
  Debug("recv: noop\n");
  FreePack(p);

  p = PackError(0);
  PackAddInt(p, "noop", 1);
  if (HttpServerSend(s, p) == 0)
  {
   FreePack(p);
   return ((void*)0);
  }

  FreePack(p);

  num_noop++;

  if (num_noop > MAX_NOOP_PER_SESSION)
  {
   return ((void*)0);
  }

  goto START;
 }

 return p;

BAD_REQUEST:

 return ((void*)0);
}
