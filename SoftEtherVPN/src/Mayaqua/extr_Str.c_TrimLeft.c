
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int Free (char*) ;
 char* Malloc (scalar_t__) ;
 int StrCpy (char*,int ,char*) ;
 scalar_t__ StrLen (char*) ;
 scalar_t__ TRUE ;

void TrimLeft(char *str)
{
 char *buf;
 UINT len, i, wp;
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
 if (str[0] != ' ' && str[0] != '\t')
 {
  return;
 }

 buf = Malloc(len + 1);
 flag = FALSE;
 wp = 0;
 for (i = 0;i < len;i++)
 {
  if (str[i] != ' ' && str[i] != '\t')
  {
   flag = TRUE;
  }
  if (flag)
  {
   buf[wp++] = str[i];
  }
 }
 buf[wp] = 0;
 StrCpy(str, 0, buf);
 Free(buf);
}
