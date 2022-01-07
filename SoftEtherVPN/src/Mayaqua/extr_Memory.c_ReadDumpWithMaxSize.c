
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ Current; } ;
typedef int IO ;
typedef TYPE_1__ BUF ;


 int FileClose (int *) ;
 int * FileOpen (char*,int) ;
 int FileRead (int *,void*,scalar_t__) ;
 scalar_t__ FileSize (int *) ;
 int Free (void*) ;
 void* Malloc (scalar_t__) ;
 TYPE_1__* NewBuf () ;
 int WriteBuf (TYPE_1__*,void*,scalar_t__) ;

BUF *ReadDumpWithMaxSize(char *filename, UINT max_size)
{
 IO *o;
 BUF *b;
 UINT size;
 void *data;

 if (filename == ((void*)0))
 {
  return ((void*)0);
 }

 o = FileOpen(filename, 0);
 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 size = FileSize(o);

 if (max_size != 0)
 {
  if (size > max_size)
  {
   size = max_size;
  }
 }

 data = Malloc(size);
 FileRead(o, data, size);
 FileClose(o);

 b = NewBuf();
 WriteBuf(b, data, size);
 b->Current = 0;
 Free(data);

 return b;
}
