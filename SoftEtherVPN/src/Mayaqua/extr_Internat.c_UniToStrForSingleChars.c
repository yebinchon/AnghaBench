
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef size_t UINT ;


 size_t UniStrLen (int*) ;

void UniToStrForSingleChars(char *dst, UINT dst_size, wchar_t *src)
{
 UINT i;

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 for (i = 0;i < UniStrLen(src) + 1;i++)
 {
  wchar_t s = src[i];
  char d;

  if (s == 0)
  {
   d = 0;
  }
  else if (s <= 0xff)
  {
   d = (char)s;
  }
  else
  {
   d = ' ';
  }

  dst[i] = d;
 }
}
