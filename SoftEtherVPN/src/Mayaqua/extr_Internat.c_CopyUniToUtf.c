
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;


 scalar_t__ CalcUniToUtf8 (int *) ;
 int UniToUtf8 (char*,scalar_t__,int *) ;
 char* ZeroMalloc (scalar_t__) ;

char *CopyUniToUtf(wchar_t *unistr)
{
 UINT size;
 char *ret;

 if (unistr == ((void*)0))
 {
  return ((void*)0);
 }

 size = CalcUniToUtf8(unistr);
 ret = ZeroMalloc(size + sizeof(char));

 UniToUtf8((char *)ret, size, unistr);

 return ret;
}
