
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int Size; int Buf; } ;
struct TYPE_8__ {int SecureMode; } ;
typedef TYPE_1__ SOCK ;
typedef int HTTP_HEADER ;
typedef TYPE_2__ BUF ;


 int AddHttpValue (int *,int ) ;
 int Free (char*) ;
 int FreeBuf (TYPE_2__*) ;
 int * GetHttpValue (int *,char*) ;
 char* HttpHeaderToStr (int *) ;
 int MAX_SIZE ;
 TYPE_2__* NewBuf () ;
 int NewHttpValue (char*,char*) ;
 int SendAll (TYPE_1__*,int ,int ,int ) ;
 int StrLen (char*) ;
 int ToStr (char*,int ) ;
 int WriteBuf (TYPE_2__*,void*,int ) ;

bool PostHttp(SOCK *s, HTTP_HEADER *header, void *post_data, UINT post_size)
{
 char *header_str;
 BUF *b;
 bool ret;

 if (s == ((void*)0) || header == ((void*)0) || (post_size != 0 && post_data == ((void*)0)))
 {
  return 0;
 }


 if (GetHttpValue(header, "Content-Length") == ((void*)0))
 {
  char tmp[MAX_SIZE];

  ToStr(tmp, post_size);
  AddHttpValue(header, NewHttpValue("Content-Length", tmp));
 }


 header_str = HttpHeaderToStr(header);
 if (header_str == ((void*)0))
 {
  return 0;
 }
 b = NewBuf();
 WriteBuf(b, header_str, StrLen(header_str));
 Free(header_str);


 WriteBuf(b, post_data, post_size);


 ret = SendAll(s, b->Buf, b->Size, s->SecureMode);

 FreeBuf(b);

 return ret;
}
