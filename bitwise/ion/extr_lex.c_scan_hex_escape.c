
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int* char_to_digit ;
 int error_here (char*) ;
 char* stream ;

int scan_hex_escape(void) {
    assert(*stream == 'x');
    stream++;
    int val = char_to_digit[(unsigned char)*stream];
    if (!val && *stream != '0') {
        error_here("\\x needs at least 1 hex digit");
    }
    stream++;
    int digit = char_to_digit[(unsigned char)*stream];
    if (digit || *stream == '0') {
        val *= 16;
        val += digit;
        if (val > 0xFF) {
            error_here("\\x argument out of range");
            val = 0xFF;
        }
        stream++;
    }
    return val;
}
