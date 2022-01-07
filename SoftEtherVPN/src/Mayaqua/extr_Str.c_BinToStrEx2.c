
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;


 int Format (char*,int ,char*,int ,char) ;
 int Free (char*) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 char* ZeroMalloc (int) ;

void BinToStrEx2(char *str, UINT str_size, void *data, UINT data_size, char padding_char)
{
 char *tmp;
 UCHAR *buf = (UCHAR *)data;
 UINT size;
 UINT i;

 if (str == ((void*)0) || data == ((void*)0))
 {
  return;
 }


 size = data_size * 3 + 1;

 tmp = ZeroMalloc(size);

 for (i = 0;i < data_size;i++)
 {
  Format(&tmp[i * 3], 0, "%02X%c", buf[i], padding_char);
 }
 if (StrLen(tmp) >= 1)
 {
  if (tmp[StrLen(tmp) - 1] == padding_char)
  {
   tmp[StrLen(tmp) - 1] = 0;
  }
 }

 StrCpy(str, str_size, tmp);

 Free(tmp);
}
