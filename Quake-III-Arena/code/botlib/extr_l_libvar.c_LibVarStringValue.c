
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float LibVarStringValue(char *string)
{
 int dotfound = 0;
 float value = 0;

 while(*string)
 {
  if (*string < '0' || *string > '9')
  {
   if (dotfound || *string != '.')
   {
    return 0;
   }
   else
   {
    dotfound = 10;
    string++;
   }
  }
  if (dotfound)
  {
   value = value + (float) (*string - '0') / (float) dotfound;
   dotfound *= 10;
  }
  else
  {
   value = value * 10.0 + (float) (*string - '0');
  }
  string++;
 }
 return value;
}
