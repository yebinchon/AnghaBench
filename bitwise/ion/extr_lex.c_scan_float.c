
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double float_val; int suffix; int kind; } ;


 double HUGE_VAL ;
 int SUFFIX_D ;
 int TOKEN_FLOAT ;
 int error_here (char*,...) ;
 scalar_t__ isdigit (char) ;
 char* stream ;
 double strtod (char const*,int *) ;
 TYPE_1__ token ;
 char tolower (char) ;

void scan_float(void) {
    const char *start = stream;
    while (isdigit(*stream)) {
        stream++;
    }
    if (*stream == '.') {
        stream++;
    }
    while (isdigit(*stream)) {
        stream++;
    }
    if (tolower(*stream) == 'e') {
        stream++;
        if (*stream == '+' || *stream == '-') {
            stream++;
        }
        if (!isdigit(*stream)) {
            error_here("Expected digit after float literal exponent, found '%c'.", *stream);
        }
        while (isdigit(*stream)) {
            stream++;
        }
    }
    double val = strtod(start, ((void*)0));
    if (val == HUGE_VAL) {
        error_here("Float literal overflow");
    }
    token.kind = TOKEN_FLOAT;
    token.float_val = val;
    if (tolower(*stream) == 'd') {
        token.suffix = SUFFIX_D;
        stream++;
    }
}
