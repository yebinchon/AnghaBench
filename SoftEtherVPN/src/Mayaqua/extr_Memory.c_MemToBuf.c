
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BUF ;


 int * NewBuf () ;
 int SeekBuf (int *,int ,int ) ;
 int WriteBuf (int *,void*,int ) ;

BUF *MemToBuf(void *data, UINT size)
{
 BUF *b;

 if (data == ((void*)0) && size != 0)
 {
  return ((void*)0);
 }

 b = NewBuf();
 WriteBuf(b, data, size);
 SeekBuf(b, 0, 0);

 return b;
}
