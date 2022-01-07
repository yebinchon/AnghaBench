
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long strtol (char const*,char**,int) ;

long atol(const char* s) {
    char * tmp;
    return strtol(s, &tmp, 10);
}
