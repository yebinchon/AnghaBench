
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;
typedef int BUF ;


 int Free (void*) ;
 void* MallocEx (int ,int) ;
 int * NewBuf () ;
 int PackGetDataEx (int *,char*,void*,int ) ;
 int PackGetDataSizeEx (int *,char*,int ) ;
 int SeekBuf (int *,int ,int ) ;
 int WriteBuf (int *,void*,int ) ;

BUF *PackGetBufEx(PACK *p, char *name, UINT index)
{
 UINT size;
 void *tmp;
 BUF *b;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 size = PackGetDataSizeEx(p, name, index);
 tmp = MallocEx(size, 1);
 if (PackGetDataEx(p, name, tmp, index) == 0)
 {
  Free(tmp);
  return ((void*)0);
 }

 b = NewBuf();
 WriteBuf(b, tmp, size);
 SeekBuf(b, 0, 0);

 Free(tmp);

 return b;
}
