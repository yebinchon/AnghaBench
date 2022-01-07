
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_val; int mod; int kind; } ;


 int MOD_CHAR ;
 int TOKEN_INT ;
 int assert (int) ;
 int error_here (char*,...) ;
 int* escape_to_char ;
 int scan_hex_escape () ;
 char* stream ;
 TYPE_1__ token ;

void scan_char(void) {
    assert(*stream == '\'');
    stream++;
    int val = 0;
    if (*stream == '\'') {
        error_here("Char literal cannot be empty");
        stream++;
    } else if (*stream == '\n') {
        error_here("Char literal cannot contain newline");
    } else if (*stream == '\\') {
        stream++;
        if (*stream == 'x') {
            val = scan_hex_escape();
        } else {
            val = escape_to_char[(unsigned char)*stream];
            if (val == 0 && *stream != '0') {
                error_here("Invalid char literal escape '\\%c'", *stream);
            }
            stream++;
        }
    } else {
        val = *stream;
        stream++;
    }
    if (*stream != '\'') {
        error_here("Expected closing char quote, got '%c'", *stream);
    } else {
        stream++;
    }
    token.kind = TOKEN_INT;
    token.int_val = val;
    token.mod = MOD_CHAR;
}
