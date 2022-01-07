
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int Free (int*) ;
 int* Malloc (int) ;
 int UniStrCpy (int*,int ,int*) ;
 int UniStrLen (int*) ;

void UniTrimLeft(wchar_t *str)
{
 wchar_t *buf;
 UINT len, i, wp;
 bool flag;

 if (str == ((void*)0))
 {
  return;
 }
 len = UniStrLen(str);
 if (len == 0)
 {
  return;
 }
 if (str[0] != L' ' && str[0] != L'\t')
 {
  return;
 }

 buf = Malloc((len + 1) * sizeof(wchar_t));
 flag = 0;
 wp = 0;
 for (i = 0;i < len;i++)
 {
  if (str[i] != L' ' && str[i] != L'\t')
  {
   flag = 1;
  }
  if (flag)
  {
   buf[wp++] = str[i];
  }
 }
 buf[wp] = 0;
 UniStrCpy(str, 0, buf);
 Free(buf);
}
