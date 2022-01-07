
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;
typedef int Buffer ;


 int buf_body (int *) ;
 int buf_write (int *,int) ;
 int isalpha (int) ;
 int isdigit (int) ;
 int * make_buffer () ;
 int * make_number (int ) ;
 int readc () ;
 scalar_t__ strchr (char*,int) ;
 int unreadc (int) ;

__attribute__((used)) static Token *read_number(char c) {
    Buffer *b = make_buffer();
    buf_write(b, c);
    char last = c;
    for (;;) {
        int c = readc();
        bool flonum = strchr("eEpP", last) && strchr("+-", c);
        if (!isdigit(c) && !isalpha(c) && c != '.' && !flonum) {
            unreadc(c);
            buf_write(b, '\0');
            return make_number(buf_body(b));
        }
        buf_write(b, c);
        last = c;
    }
}
