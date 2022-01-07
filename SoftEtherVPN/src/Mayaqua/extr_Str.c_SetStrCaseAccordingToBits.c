
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t StrLen (char*) ;
 char ToLower (char) ;
 char ToUpper (char) ;

void SetStrCaseAccordingToBits(char *str, UINT bits)
{
 UINT i, len;

 if (str == ((void*)0))
 {
  return;
 }

 len = StrLen(str);

 for (i = 0;i < len;i++)
 {
  char c = str[i];

  if (bits & 0x01)
  {
   c = ToUpper(c);
  }
  else
  {
   c = ToLower(c);
  }

  str[i] = c;

  bits = bits / 2;
 }
}
