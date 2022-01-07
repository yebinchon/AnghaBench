
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 scalar_t__ HexTo4Bit (char) ;
 size_t StrLen (char*) ;

UINT HexToInt(char *str)
{
 UINT len, i;
 UINT ret = 0;

 if (str == ((void*)0))
 {
  return 0;
 }

 if (str[0] == '0' && (str[1] == 'x' || str[1] == 'X'))
 {
  str += 2;
 }

 len = StrLen(str);
 for (i = 0;i < len;i++)
 {
  char c = str[i];

  if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F'))
  {
   ret = ret * 16 + (UINT)HexTo4Bit(c);
  }
  else
  {
   break;
  }
 }

 return ret;
}
