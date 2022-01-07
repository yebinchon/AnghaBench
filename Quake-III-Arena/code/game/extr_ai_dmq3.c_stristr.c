
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ toupper (char) ;

char *stristr(char *str, char *charset) {
 int i;

 while(*str) {
  for (i = 0; charset[i] && str[i]; i++) {
   if (toupper(charset[i]) != toupper(str[i])) break;
  }
  if (!charset[i]) return str;
  str++;
 }
 return ((void*)0);
}
