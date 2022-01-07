
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;


 int ENC_NONE ;
 int errorp (int ,char*) ;
 int * make_char (int,int) ;
 int pos ;
 int read_escaped_char () ;
 int readc () ;

__attribute__((used)) static Token *read_char(int enc) {
    int c = readc();
    int r = (c == '\\') ? read_escaped_char() : c;
    c = readc();
    if (c != '\'')
        errorp(pos, "unterminated char");
    if (enc == ENC_NONE)
        return make_char((char)r, enc);
    return make_char(r, enc);
}
