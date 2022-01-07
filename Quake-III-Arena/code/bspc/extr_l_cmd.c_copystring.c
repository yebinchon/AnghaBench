
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* GetMemory (scalar_t__) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

char *copystring(char *s)
{
 char *b;
 b = GetMemory(strlen(s)+1);
 strcpy (b, s);
 return b;
}
