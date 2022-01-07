
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int FIFO ;


 int * GetFifoPointer (int *) ;

UCHAR *FifoPtr(FIFO *f)
{
 return GetFifoPointer(f);
}
