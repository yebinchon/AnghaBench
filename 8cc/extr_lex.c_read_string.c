
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;
typedef int Buffer ;


 int EOF ;
 int buf_body (int *) ;
 int buf_len (int *) ;
 int buf_write (int *,char) ;
 int errorp (int ,char*) ;
 int * make_buffer () ;
 int * make_strtok (int ,int ,int) ;
 unsigned char peek () ;
 int pos ;
 int read_escaped_char () ;
 int readc () ;
 int write_utf8 (int *,int) ;

__attribute__((used)) static Token *read_string(int enc) {
    Buffer *b = make_buffer();
    for (;;) {
        int c = readc();
        if (c == EOF)
            errorp(pos, "unterminated string");
        if (c == '"')
            break;
        if (c != '\\') {
            buf_write(b, c);
            continue;
        }
        bool isucs = (peek() == 'u' || peek() == 'U');
        c = read_escaped_char();
        if (isucs) {
            write_utf8(b, c);
            continue;
        }
        buf_write(b, c);
    }
    buf_write(b, '\0');
    return make_strtok(buf_body(b), buf_len(b), enc);
}
