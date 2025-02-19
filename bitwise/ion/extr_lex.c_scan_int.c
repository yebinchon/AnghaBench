
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long int_val; int suffix; int kind; int mod; } ;


 int MOD_BIN ;
 int MOD_HEX ;
 int MOD_OCT ;
 int SUFFIX_L ;
 int SUFFIX_LL ;
 int SUFFIX_U ;
 int SUFFIX_UL ;
 int SUFFIX_ULL ;
 int TOKEN_INT ;
 int ULLONG_MAX ;
 int* char_to_digit ;
 int error_here (char*,...) ;
 scalar_t__ isdigit (char) ;
 char* stream ;
 TYPE_1__ token ;
 char tolower (char) ;

void scan_int(void) {
    int base = 10;
    const char *start_digits = stream;
    if (*stream == '0') {
        stream++;
        if (tolower(*stream) == 'x') {
            stream++;
            token.mod = MOD_HEX;
            base = 16;
            start_digits = stream;
        } else if (tolower(*stream) == 'b') {
            stream++;
            token.mod = MOD_BIN;
            base = 2;
            start_digits = stream;
        } else if (isdigit(*stream)) {
            token.mod = MOD_OCT;
            base = 8;
            start_digits = stream;
        }
    }
    unsigned long long val = 0;
    for (;;) {
        if (*stream == '_') {
            stream++;
            continue;
        }
        int digit = char_to_digit[(unsigned char)*stream];
        if (digit == 0 && *stream != '0') {
            break;
        }
        if (digit >= base) {
            error_here("Digit '%c' out of range for base %d", *stream, base);
            digit = 0;
        }
        if (val > (ULLONG_MAX - digit)/base) {
            error_here("Integer literal overflow");
            while (isdigit(*stream)) {
                stream++;
            }
            val = 0;
            break;
        }
        val = val*base + digit;
        stream++;
    }
    if (stream == start_digits) {
        error_here("Expected base %d digit, got '%c'", base, *stream);
    }
    token.kind = TOKEN_INT;
    token.int_val = val;
    if (tolower(*stream) == 'u') {
        token.suffix = SUFFIX_U;
        stream++;
        if (tolower(*stream) == 'l') {
            token.suffix = SUFFIX_UL;
            stream++;
            if (tolower(*stream) == 'l') {
                token.suffix = SUFFIX_ULL;
                stream++;
            }
        }
    } else if (tolower(*stream) == 'l') {
        token.suffix = SUFFIX_L;
        stream++;
        if (tolower(*stream) == 'l') {
            token.suffix = SUFFIX_LL;
            stream++;
        }
    }
}
