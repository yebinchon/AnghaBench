
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,int) ;
 char* strsave (char const*) ;

char *replace(const char *str, int from, int to) {
 char *s = strsave(str), *p = s;

 for ( ; (p = strchr(p, from)) != ((void*)0); p++)
  *p = to;
 return s;
}
