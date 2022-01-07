
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BUF ;


 int Free (void*) ;
 void* Malloc (int ) ;
 int * MemToBuf (void*,int ) ;
 int Rand (void*,int ) ;

BUF *RandBuf(UINT size)
{
 void *data = Malloc(size);
 BUF *ret;

 Rand(data, size);

 ret = MemToBuf(data, size);

 Free(data);

 return ret;
}
