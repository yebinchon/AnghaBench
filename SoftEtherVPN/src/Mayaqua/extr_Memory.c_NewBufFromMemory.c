
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BUF ;


 int * NewBuf () ;
 int SeekBufToBegin (int *) ;
 int WriteBuf (int *,void*,int ) ;

BUF *NewBufFromMemory(void *buf, UINT size)
{
 BUF *b;

 if (buf == ((void*)0) && size != 0)
 {
  return ((void*)0);
 }

 b = NewBuf();
 WriteBuf(b, buf, size);
 SeekBufToBegin(b);

 return b;
}
