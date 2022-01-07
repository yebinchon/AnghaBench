
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;


 int buf_printf (int *,char*,...) ;
 scalar_t__ isprint (char) ;
 char* quote (char) ;

__attribute__((used)) static void print(Buffer *b, char c) {
    char *q = quote(c);
    if (q) {
        buf_printf(b, "%s", q);
    } else if (isprint(c)) {
        buf_printf(b, "%c", c);
    } else {
        buf_printf(b, "\\x%02x", c);
    }
}
