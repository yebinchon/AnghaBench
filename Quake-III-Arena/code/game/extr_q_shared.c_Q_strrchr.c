
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char* Q_strrchr( const char* string, int c )
{
 char cc = c;
 char *s;
 char *sp=(char *)0;

 s = (char*)string;

 while (*s)
 {
  if (*s == cc)
   sp = s;
  s++;
 }
 if (cc == 0)
  sp = s;

 return sp;
}
