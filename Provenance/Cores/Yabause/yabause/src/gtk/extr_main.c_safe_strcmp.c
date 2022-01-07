
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int safe_strcmp(const char * s1, const char * s2) {
 if (s1) {
  if (s2) {
   return strcmp(s1, s2);
  } else {
   return 1;
  }
 } else {
  if (s2) {
   return -1;
  } else {
   return 0;
  }
 }
}
