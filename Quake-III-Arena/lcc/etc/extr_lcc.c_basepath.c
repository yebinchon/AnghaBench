
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strsave (char*) ;

char *basepath(char *name) {
 char *s, *b, *t = 0;

 for (b = s = name; *s; s++)
  if (*s == '/' || *s == '\\') {
   b = s + 1;
   t = 0;
  } else if (*s == '.')
   t = s;
 s = strsave(b);
 if (t)
  s[t-b] = 0;
 return s;
}
