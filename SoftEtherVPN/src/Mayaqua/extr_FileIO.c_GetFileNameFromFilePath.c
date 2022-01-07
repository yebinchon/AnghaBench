
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 int MAX_SIZE ;
 size_t MIN (int ,int) ;
 int StrCpy (char*,size_t,char*) ;
 int StrLen (char*) ;

void GetFileNameFromFilePath(char *dst, UINT size, char *filepath)
{
 char tmp[MAX_SIZE];
 UINT i, len, wp;

 if (dst == ((void*)0) || filepath == ((void*)0))
 {
  return;
 }

 len = MIN(StrLen(filepath), (MAX_SIZE - 2));
 wp = 0;

 for (i = 0;i < (len + 1);i++)
 {
  char c = filepath[i];

  switch (c)
  {
  case '\\':
  case '/':
  case 0:
   tmp[wp] = 0;
   wp = 0;
   break;

  default:
   tmp[wp] = c;
   wp++;
   break;
  }
 }

 StrCpy(dst, size, tmp);
}
