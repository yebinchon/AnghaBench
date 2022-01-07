
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int FIFO ;
typedef int BUF ;


 int FifoSize (int *) ;
 int Free (int *) ;
 int * Malloc (int ) ;
 int * MemToBuf (int *,int ) ;
 int * NewBuf () ;
 int ReadFifo (int *,int *,int ) ;

BUF *ReadFifoAll(FIFO *f)
{
 BUF *buf;
 UCHAR *tmp;
 UINT size;
 if (f == ((void*)0))
 {
  return NewBuf();
 }

 size = FifoSize(f);
 tmp = Malloc(size);
 ReadFifo(f, tmp, size);

 buf = MemToBuf(tmp, size);

 Free(tmp);

 return buf;
}
