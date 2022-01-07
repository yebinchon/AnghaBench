
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT ;


 int MAX_SIZE ;
 int StrCpy (char*,int ,char*) ;
 int StrLen (char*) ;

void ToStr64(char *str, UINT64 value)
{
 char tmp[MAX_SIZE];
 UINT wp = 0;
 UINT len, i;

 if (str == ((void*)0))
 {
  return;
 }


 StrCpy(tmp, 0, "");


 while (1)
 {
  UINT a = (UINT)(value % (UINT64)10);
  value = value / (UINT64)10;
  tmp[wp++] = (char)('0' + a);
  if (value == 0)
  {
   tmp[wp++] = 0;
   break;
  }
 }


 len = StrLen(tmp);
 for (i = 0;i < len;i++)
 {
  str[len - i - 1] = tmp[i];
 }
 str[len] = 0;
}
