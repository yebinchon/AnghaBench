
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (char const) ;
 int islower (char const) ;

bool str_islower(const char *str) {
    while (*str) {
        if (isalpha(*str) && !islower(*str)) {
            return 0;
        }
        str++;
    }
    return 1;
}
