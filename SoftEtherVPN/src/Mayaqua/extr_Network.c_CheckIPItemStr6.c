
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int StrLen (char*) ;

bool CheckIPItemStr6(char *str)
{
 UINT i, len;

 if (str == ((void*)0))
 {
  return 0;
 }

 len = StrLen(str);
 if (len >= 5)
 {

  return 0;
 }

 for (i = 0;i < len;i++)
 {
  char c = str[i];

  if ((c >= 'a' && c <= 'f') ||
   (c >= 'A' && c <= 'F') ||
   (c >= '0' && c <= '9'))
  {
  }
  else
  {
   return 0;
  }
 }

 return 1;
}
