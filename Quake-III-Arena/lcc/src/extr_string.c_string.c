
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* stringn (char const*,int) ;

char *string(const char *str) {
 const char *s;

 for (s = str; *s; s++)
  ;
 return stringn(str, s - str);
}
