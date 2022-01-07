
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char*) ;
 char toupper (char) ;

void upper_case(char * str)
{
   if (str)
   {
      size_t len = strlen(str);
      int i;

      for (i = 0; i < len; i++)
         str[i] = toupper(str[i]);
   }
}
