
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Copy (char*,void*,int ) ;
 int Free (char*) ;
 int INFINITE ;
 int SearchStrEx (char*,char*,int ,int) ;
 char* ZeroMalloc (int ) ;

UINT SearchAsciiInBinary(void *data, UINT size, char *str, bool case_sensitive)
{
 UINT ret = INFINITE;
 char *tmp;

 if (data == ((void*)0) || size == 0 || str == ((void*)0))
 {
  return INFINITE;
 }

 tmp = ZeroMalloc(size + 1);
 Copy(tmp, data, size);

 ret = SearchStrEx(tmp, str, 0, case_sensitive);

 Free(tmp);

 return ret;
}
