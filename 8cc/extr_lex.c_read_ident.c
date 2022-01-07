
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;
typedef int Buffer ;


 int buf_body (int *) ;
 int buf_write (int *,char) ;
 scalar_t__ isalnum (char) ;
 int * make_buffer () ;
 int * make_ident (int ) ;
 unsigned char peek () ;
 int read_escaped_char () ;
 char readc () ;
 int unreadc (char) ;
 int write_utf8 (int *,int ) ;

__attribute__((used)) static Token *read_ident(char c) {
    Buffer *b = make_buffer();
    buf_write(b, c);
    for (;;) {
        c = readc();
        if (isalnum(c) || (c & 0x80) || c == '_' || c == '$') {
            buf_write(b, c);
            continue;
        }


        if (c == '\\' && (peek() == 'u' || peek() == 'U')) {
            write_utf8(b, read_escaped_char());
            continue;
        }
        unreadc(c);
        buf_write(b, '\0');
        return make_ident(buf_body(b));
    }
}
