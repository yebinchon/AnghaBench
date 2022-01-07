
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;


 int Free (char*) ;
 int StrCpy (char*,int,char*) ;
 char* ZeroMalloc (int) ;
 int sprintf (char*,char*,int) ;

void BinToStr(char *str, UINT str_size, void *data, UINT data_size)
{
 char *tmp;
 UCHAR *buf = (UCHAR *)data;
 UINT size;
 UINT i;

 if (str == ((void*)0) || data == ((void*)0))
 {
  if (str != ((void*)0))
  {
   str[0] = 0;
  }
  return;
 }


 size = data_size * 2 + 1;

 tmp = ZeroMalloc(size);

 for (i = 0;i < data_size;i++)
 {
  sprintf(&tmp[i * 2], "%02X", buf[i]);
 }

 StrCpy(str, str_size, tmp);

 Free(tmp);
}
