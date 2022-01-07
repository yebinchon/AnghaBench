
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_5__ {int Size; int* Buf; } ;
typedef TYPE_1__ BUF ;


 int SeekBuf (TYPE_1__*,int,int) ;
 int SeekBufToBegin (TYPE_1__*) ;

bool BufSkipUtf8Bom(BUF *b)
{
 if (b == ((void*)0))
 {
  return 0;
 }

 SeekBufToBegin(b);

 if (b->Size >= 3)
 {
  UCHAR *data = b->Buf;

  if (data[0] == 0xEF && data[1] == 0xBB && data[2] == 0xBF)
  {
   SeekBuf(b, 3, 1);

   return 1;
  }
 }

 return 0;
}
