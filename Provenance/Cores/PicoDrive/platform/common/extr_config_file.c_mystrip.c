
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static char *mystrip(char *str)
{
 int i, len;

 len = strlen(str);
 for (i = 0; i < len; i++)
  if (str[i] != ' ') break;
 if (i > 0) memmove(str, str + i, len - i + 1);

 len = strlen(str);
 for (i = len - 1; i >= 0; i--)
  if (str[i] != ' ') break;
 str[i+1] = 0;

 return str;
}
