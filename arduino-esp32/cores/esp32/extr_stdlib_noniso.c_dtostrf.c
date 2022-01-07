
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;
typedef int int8_t ;


 scalar_t__ isinf (double) ;
 scalar_t__ isnan (double) ;
 int strcpy (char*,char*) ;

char * dtostrf(double number, signed char width, unsigned char prec, char *s) {
    bool negative = 0;

    if (isnan(number)) {
        strcpy(s, "nan");
        return s;
    }
    if (isinf(number)) {
        strcpy(s, "inf");
        return s;
    }

    char* out = s;

    int fillme = width;
    if (prec > 0) {
        fillme -= (prec+1);
    }


    if (number < 0.0) {
        negative = 1;
        fillme--;
        number = -number;
    }



    double rounding = 2.0;
    for (uint8_t i = 0; i < prec; ++i)
        rounding *= 10.0;
    rounding = 1.0 / rounding;

    number += rounding;


    double tenpow = 1.0;
    int digitcount = 1;
    while (number >= 10.0 * tenpow) {
        tenpow *= 10.0;
        digitcount++;
    }

    number /= tenpow;
    fillme -= digitcount;


    while (fillme-- > 0) {
        *out++ = ' ';
    }


    if (negative) *out++ = '-';


    digitcount += prec;
    int8_t digit = 0;
    while (digitcount-- > 0) {
        digit = (int8_t)number;
        if (digit > 9) digit = 9;
        *out++ = (char)('0' | digit);
        if ((digitcount == prec) && (prec > 0)) {
            *out++ = '.';
        }
        number -= digit;
        number *= 10.0;
    }


    *out = 0;
    return s;
}
