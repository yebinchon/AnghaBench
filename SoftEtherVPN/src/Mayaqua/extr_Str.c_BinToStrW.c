
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int UINT ;


 int BinToStr (char*,int,void*,int) ;
 int Free (char*) ;
 int StrToUni (scalar_t__*,int,char*) ;
 char* ZeroMalloc (int) ;

void BinToStrW(wchar_t *str, UINT str_size, void *data, UINT data_size)
{
 char *tmp;
 UINT tmp_size;

 if (str == ((void*)0) || data == ((void*)0))
 {
  if (str != ((void*)0))
  {
   str[0] = 0;
  }
  return;
 }

 tmp_size = (data_size * 2 + 4) * sizeof(wchar_t);
 tmp = ZeroMalloc(tmp_size);

 BinToStr(tmp, tmp_size, data, data_size);

 StrToUni(str, str_size, tmp);

 Free(tmp);
}
