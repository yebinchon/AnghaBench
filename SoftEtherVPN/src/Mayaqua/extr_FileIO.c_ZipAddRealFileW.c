
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ZIP_PACKER ;
typedef int UINT64 ;
typedef int UINT ;
struct TYPE_4__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 scalar_t__ IsEmptyStr (char*) ;
 TYPE_1__* ReadDumpW (int *) ;
 int ZipAddFileSimple (int *,char*,int ,int ,int ,int ) ;

bool ZipAddRealFileW(ZIP_PACKER *p, char *name, UINT64 dt, UINT attribute, wchar_t *srcname)
{
 BUF *b;

 if (p == ((void*)0) || IsEmptyStr(name) || srcname == ((void*)0))
 {
  return 0;
 }

 b = ReadDumpW(srcname);
 if (b == ((void*)0))
 {
  return 0;
 }

 ZipAddFileSimple(p, name, dt, attribute, b->Buf, b->Size);

 FreeBuf(b);

 return 1;
}
