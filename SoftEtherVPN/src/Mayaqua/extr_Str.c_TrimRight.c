
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BOOL ;


 int Copy (char*,char*,int) ;
 int FALSE ;
 int Free (char*) ;
 char* Malloc (int) ;
 int StrCpy (char*,int ,char*) ;
 int StrLen (char*) ;

void TrimRight(char *str)
{
 char *buf, *tmp;
 UINT len, i, wp, wp2;
 BOOL flag;

 if (str == ((void*)0))
 {
  return;
 }
 len = StrLen(str);
 if (len == 0)
 {
  return;
 }
 if (str[len - 1] != ' ' && str[len - 1] != '\t')
 {
  return;
 }

 buf = Malloc(len + 1);
 tmp = Malloc(len + 1);
 flag = FALSE;
 wp = 0;
 wp2 = 0;
 for (i = 0;i < len;i++)
 {
  if (str[i] != ' ' && str[i] != '\t')
  {
   Copy(buf + wp, tmp, wp2);
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
 StrCpy(str, 0, buf);
 Free(buf);
 Free(tmp);
}
