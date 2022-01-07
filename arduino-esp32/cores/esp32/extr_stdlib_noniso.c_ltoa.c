
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long abs (long) ;
 int reverse (char*,char*) ;

char* ltoa(long value, char* result, int base) {
    if(base < 2 || base > 16) {
        *result = 0;
        return result;
    }

    char* out = result;
    long quotient = abs(value);

    do {
        const long tmp = quotient / base;
        *out = "0123456789abcdef"[quotient - (tmp * base)];
        ++out;
        quotient = tmp;
    } while(quotient);


    if(value < 0)
        *out++ = '-';

    reverse(result, out);
    *out = 0;
    return result;
}
