
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp2 ;
typedef int UINT ;


 scalar_t__ CfgCheckCharForName (char) ;
 int Format (char*,int,char*,int) ;
 int Free (char*) ;
 char* Malloc (int) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 char* ZeroMalloc (int) ;

char *CfgEscape(char *str)
{
 char *tmp;
 char *ret;
 char tmp2[16];
 UINT len;
 UINT wp, i;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }

 len = StrLen(str);
 tmp = ZeroMalloc(len * 3 + 2);
 if (len == 0)
 {

  StrCpy(tmp, (len * 3 + 2), "$");
 }
 else
 {

  wp = 0;
  for (i = 0;i < len;i++)
  {
   if (CfgCheckCharForName(str[i]))
   {
    tmp[wp++] = str[i];
   }
   else
   {
    tmp[wp++] = '$';
    Format(tmp2, sizeof(tmp2), "%02X", (UINT)str[i]);
    tmp[wp++] = tmp2[0];
    tmp[wp++] = tmp2[1];
   }
  }
 }
 ret = Malloc(StrLen(tmp) + 1);
 StrCpy(ret, 0, tmp);
 Free(tmp);
 return ret;
}
