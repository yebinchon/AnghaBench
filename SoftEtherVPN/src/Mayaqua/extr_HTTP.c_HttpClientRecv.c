
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_14__ {int Target; int Method; } ;
struct TYPE_13__ {int Data; } ;
struct TYPE_12__ {int SecureMode; } ;
typedef TYPE_1__ SOCK ;
typedef int PACK ;
typedef TYPE_2__ HTTP_VALUE ;
typedef TYPE_3__ HTTP_HEADER ;
typedef int BUF ;


 int * BufToPack (int *) ;
 int Free (int *) ;
 int FreeBuf (int *) ;
 int FreeHttpHeader (TYPE_3__*) ;
 scalar_t__ GetContentLength (TYPE_3__*) ;
 TYPE_2__* GetHttpValue (TYPE_3__*,char*) ;
 char* HTTP_CONTENT_TYPE2 ;
 scalar_t__ MAX_PACK_SIZE ;
 int * MallocEx (scalar_t__,int) ;
 int * NewBuf () ;
 int RecvAll (TYPE_1__*,int *,scalar_t__,int ) ;
 TYPE_3__* RecvHttpHeader (TYPE_1__*) ;
 int SeekBuf (int *,int ,int ) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int WriteBuf (int *,int *,scalar_t__) ;

PACK *HttpClientRecv(SOCK *s)
{
 BUF *b;
 PACK *p;
 HTTP_HEADER *h;
 UINT size;
 UCHAR *tmp;
 HTTP_VALUE *v;

 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 h = RecvHttpHeader(s);
 if (h == ((void*)0))
 {
  return ((void*)0);
 }

 if (StrCmpi(h->Method, "HTTP/1.1") != 0 ||
  StrCmpi(h->Target, "200") != 0)
 {
  FreeHttpHeader(h);
  return ((void*)0);
 }

 v = GetHttpValue(h, "Content-Type");
 if (v == ((void*)0) || StrCmpi(v->Data, HTTP_CONTENT_TYPE2) != 0)
 {
  FreeHttpHeader(h);
  return ((void*)0);
 }

 size = GetContentLength(h);
 if (size == 0 || size > MAX_PACK_SIZE)
 {
  FreeHttpHeader(h);
  return ((void*)0);
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

 return p;
}
