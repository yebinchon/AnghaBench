
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
strnlen(const char *s, size_t max) {
 const char *es = s + max, *p = s;
 while(*p && p != es)
  p++;

 return p - s;
}
