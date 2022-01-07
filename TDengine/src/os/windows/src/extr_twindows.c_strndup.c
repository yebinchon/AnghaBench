
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (int,int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

char *strndup(const char *s, size_t n) {
  int len = strlen(s);
  if (len >= n) {
    len = n;
  }

  char *r = calloc(len + 1, 1);
  memcpy(r, s, len);
  r[len] = 0;
  return r;
}
