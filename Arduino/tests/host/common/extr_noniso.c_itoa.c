
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;
 int reverse (char*,char*) ;
 char* utoa (unsigned int,char*,int) ;

char* itoa(int value, char* result, int base) {
    if(base < 2 || base > 16) {
        *result = 0;
        return result;
    }
    if (base != 10) {
 return utoa((unsigned)value, result, base);
   }

    char* out = result;
    int quotient = abs(value);

    do {
        const int tmp = quotient / base;
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
