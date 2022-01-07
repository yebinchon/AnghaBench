
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rcerror (char*) ;

__attribute__((used)) static void
regerr2(char *s, int c)
{
 char buf[100];
 char *cp = buf;
 while(*s)
  *cp++ = *s++;
 *cp++ = c;
 *cp = '\0';
 rcerror(buf);
}
