
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Free (char*) ;
 char* Malloc (int) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int ToInt (char*) ;
 char* ZeroMalloc (int) ;

char *CfgUnescape(char *str)
{
 char *tmp;
 char *ret;
 char tmp2[16];
 UINT len, wp, i;
 UINT code;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }

 len = StrLen(str);
 tmp = ZeroMalloc(len + 1);
 wp = 0;
 if (len == 1 && str[0] == '$')
 {

  tmp[0] = 0;
 }
 else
 {
  for (i = 0;i < len;i++)
  {
   if (str[i] != '$')
   {
    tmp[wp++] = str[i];
   }
   else
   {
    tmp2[0] = '0';
    tmp2[1] = 'x';
    tmp2[2] = str[i + 1];
    tmp2[3] = str[i + 2];
    i += 2;
    tmp2[4] = 0;
    code = ToInt(tmp2);
    tmp[wp++] = (char)code;
   }
  }
 }
 ret = Malloc(StrLen(tmp) + 1);
 StrCpy(ret, StrLen(tmp) + 1, tmp);
 Free(tmp);
 return ret;
}
