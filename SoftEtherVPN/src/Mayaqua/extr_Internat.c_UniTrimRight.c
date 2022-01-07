
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int Copy (int*,int*,int) ;
 int Free (int*) ;
 int* Malloc (int) ;
 int UniStrCpy (int*,int ,int*) ;
 int UniStrLen (int*) ;

void UniTrimRight(wchar_t *str)
{
 wchar_t *buf, *tmp;
 UINT len, i, wp, wp2;
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
 if (str[len - 1] != L' ' && str[len - 1] != L'\t')
 {
  return;
 }

 buf = Malloc((len + 1) * sizeof(wchar_t));
 tmp = Malloc((len + 1) * sizeof(wchar_t));
 flag = 0;
 wp = wp2 = 0;
 for (i = 0;i < len;i++)
 {
  if (str[i] != L' ' && str[i] != L'\t')
  {
   Copy(&buf[wp], tmp, wp2 * sizeof(wchar_t));
   wp += wp2;
   wp2 = 0;
   buf[wp++] = str[i];
  }
  else
  {
   tmp[wp2++] = str[i];
  }
 }
 buf[wp] = 0;
 UniStrCpy(str, 0, buf);
 Free(buf);
 Free(tmp);
}
