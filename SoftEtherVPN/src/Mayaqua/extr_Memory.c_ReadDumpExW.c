
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UINT ;
struct TYPE_5__ {scalar_t__ Current; } ;
typedef int IO ;
typedef TYPE_1__ BUF ;


 int FileClose (int *) ;
 int * FileOpenExW (int *,int,int) ;
 int FileRead (int *,void*,int ) ;
 int FileSize (int *) ;
 int Free (void*) ;
 void* Malloc (int ) ;
 TYPE_1__* NewBuf () ;
 int WriteBuf (TYPE_1__*,void*,int ) ;

BUF *ReadDumpExW(wchar_t *filename, bool read_lock)
{
 IO *o;
 BUF *b;
 UINT size;
 void *data;

 if (filename == ((void*)0))
 {
  return ((void*)0);
 }

 o = FileOpenExW(filename, 0, read_lock);
 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 size = FileSize(o);
 data = Malloc(size);
 FileRead(o, data, size);
 FileClose(o);

 b = NewBuf();
 WriteBuf(b, data, size);
 b->Current = 0;
 Free(data);

 return b;
}
