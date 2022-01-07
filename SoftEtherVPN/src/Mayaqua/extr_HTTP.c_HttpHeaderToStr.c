
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {int Size; int Buf; } ;
struct TYPE_9__ {int ValueList; int Version; int Target; int Method; } ;
struct TYPE_8__ {int Data; int Name; } ;
typedef TYPE_1__ HTTP_VALUE ;
typedef TYPE_2__ HTTP_HEADER ;
typedef TYPE_3__ BUF ;


 int Copy (char*,int ,int) ;
 int Format (char*,int,char*,int ,int ,...) ;
 int Free (char*) ;
 int FreeBuf (TYPE_3__*) ;
 int HTTP_HEADER_LINE_MAX_SIZE ;
 scalar_t__ LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 char* Malloc (int) ;
 TYPE_3__* NewBuf () ;
 int StrLen (char*) ;
 int WriteBuf (TYPE_3__*,char*,int) ;

char *HttpHeaderToStr(HTTP_HEADER *header)
{
 BUF *b;
 char *tmp;
 UINT i;
 char *s;

 if (header == ((void*)0))
 {
  return ((void*)0);
 }

 tmp = Malloc(HTTP_HEADER_LINE_MAX_SIZE);
 b = NewBuf();


 Format(tmp, HTTP_HEADER_LINE_MAX_SIZE,
  "%s %s %s\r\n", header->Method, header->Target, header->Version);
 WriteBuf(b, tmp, StrLen(tmp));


 for (i = 0;i < LIST_NUM(header->ValueList);i++)
 {
  HTTP_VALUE *v = (HTTP_VALUE *)LIST_DATA(header->ValueList, i);
  Format(tmp, HTTP_HEADER_LINE_MAX_SIZE,
   "%s: %s\r\n", v->Name, v->Data);
  WriteBuf(b, tmp, StrLen(tmp));
 }


 WriteBuf(b, "\r\n", 2);
 s = Malloc(b->Size + 1);
 Copy(s, b->Buf, b->Size);
 s[b->Size] = 0;

 FreeBuf(b);
 Free(tmp);

 return s;
}
