
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int BinToStrEx (char*,int,void*,int) ;
 char* ZeroMalloc (int) ;

char *CopyBinToStrEx(void *data, UINT data_size)
{
 char *ret;
 UINT size;

 if (data == ((void*)0))
 {
  return ((void*)0);
 }

 size = data_size * 3 + 1;
 ret = ZeroMalloc(size);

 BinToStrEx(ret, size, data, data_size);

 return ret;
}
