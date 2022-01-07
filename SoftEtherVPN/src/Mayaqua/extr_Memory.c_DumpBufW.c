
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int Size; int Buf; } ;
typedef int IO ;
typedef TYPE_1__ BUF ;


 int FileClose (int *) ;
 int * FileCreateW (int *) ;
 int FileWrite (int *,int ,int ) ;

bool DumpBufW(BUF *b, wchar_t *filename)
{
 IO *o;

 if (b == ((void*)0) || filename == ((void*)0))
 {
  return 0;
 }

 o = FileCreateW(filename);
 if (o == ((void*)0))
 {
  return 0;
 }
 FileWrite(o, b->Buf, b->Size);
 FileClose(o);

 return 1;
}
