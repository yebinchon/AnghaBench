
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXMEM ;
 scalar_t__ isspace (char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

void trim_str(char *str)
{
 char tmp[MAXMEM];
 int start, end, j, i;

 start = 0;
 end = strlen(str) - 1;
 j = 0;
 while (start < strlen(str) && isspace(str[start])) start++;
 while (end >= 0 && isspace(str[end])) end--;

 for (i = start; i <= end; ++i)
  tmp[j++] = str[i];

 tmp[j] = '\0';
 strcpy(str, tmp);

 return;
}
