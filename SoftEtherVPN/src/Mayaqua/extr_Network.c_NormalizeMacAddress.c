
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 int BinToStr (char*,int ,int ,int) ;
 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* StrToBin (char*) ;

bool NormalizeMacAddress(char *dst, UINT size, char *src)
{
 BUF *b;
 bool ret = 0;

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return 0;
 }

 b = StrToBin(src);

 if (b != ((void*)0) && b->Size == 6)
 {
  ret = 1;

  BinToStr(dst, size, b->Buf, b->Size);
 }

 FreeBuf(b);

 return ret;
}
