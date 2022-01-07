
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef size_t UINT ;


 int MAX_SIZE ;
 size_t MIN (int ,int) ;
 int UniStrCpy (int*,size_t,int*) ;
 int UniStrLen (int*) ;

void GetFileNameFromFilePathW(wchar_t *dst, UINT size, wchar_t *filepath)
{
 wchar_t tmp[MAX_SIZE];
 UINT i, len, wp;

 if (dst == ((void*)0) || filepath == ((void*)0))
 {
  return;
 }

 len = MIN(UniStrLen(filepath), (MAX_SIZE - 2));
 wp = 0;

 for (i = 0;i < (len + 1);i++)
 {
  wchar_t c = filepath[i];

  switch (c)
  {
  case L'\\':
  case L'/':
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

 UniStrCpy(dst, size, tmp);
}
