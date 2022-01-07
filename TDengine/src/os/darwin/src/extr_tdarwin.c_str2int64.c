
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int strtoll (char*,char**,int) ;

int64_t str2int64(char *str) {
  char *endptr = ((void*)0);
  return strtoll(str, &endptr, 10);
}
