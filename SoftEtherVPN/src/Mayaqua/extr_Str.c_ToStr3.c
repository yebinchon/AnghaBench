
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT ;


 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int ToStr64 (char*,int ) ;

void ToStr3(char *str, UINT size, UINT64 v)
{
 char tmp[128];
 char tmp2[128];
 UINT i, len, wp;

 if (str == ((void*)0))
 {
  return;
 }

 ToStr64(tmp, v);

 wp = 0;
 len = StrLen(tmp);

 for (i = len - 1;((int)i) >= 0;i--)
 {
  tmp2[wp++] = tmp[i];
 }
 tmp2[wp++] = 0;

 wp = 0;

 for (i = 0;i < len;i++)
 {
  if (i != 0 && (i % 3) == 0)
  {
   tmp[wp++] = ',';
  }
  tmp[wp++] = tmp2[i];
 }
 tmp[wp++] = 0;
 wp = 0;
 len = StrLen(tmp);

 for (i = len - 1;((int)i) >= 0;i--)
 {
  tmp2[wp++] = tmp[i];
 }
 tmp2[wp++] = 0;

 StrCpy(str, size, tmp2);
}
