
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int strtoul (char*,int *,int ) ;

UINT ToInt(char *str)
{

 if (str == ((void*)0))
 {
  return 0;
 }


 while (1)
 {
  if (*str != '0')
  {
   break;
  }
  if ((*(str + 1) == 'x') || (*(str + 1) == 'X'))
  {
   break;
  }
  str++;
 }

 return (UINT)strtoul(str, ((void*)0), 0);
}
