
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int BinToStrEx (char*,int,void*,int) ;
 int Free (char*) ;
 char* Malloc (int) ;
 int Print (char*,char*) ;

void PrintBin(void *data, UINT size)
{
 char *tmp;
 UINT i;

 if (data == ((void*)0))
 {
  return;
 }

 i = size * 3 + 1;
 tmp = Malloc(i);
 BinToStrEx(tmp, i, data, size);
 Print("%s\n", tmp);
 Free(tmp);
}
