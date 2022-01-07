
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Pos ;
typedef int Buffer ;


 int EOF ;
 char* buf_body (int *) ;
 scalar_t__ buf_len (int *) ;
 int buf_write (int *,char) ;
 int buffer_empty () ;
 int errorp (int ,char*) ;
 int get_pos (int ) ;
 int * make_buffer () ;
 scalar_t__ next (char) ;
 int readc () ;
 int skip_space () ;

char *read_header_file_name(bool *std) {
    if (!buffer_empty())
        return ((void*)0);
    skip_space();
    Pos p = get_pos(0);
    char close;
    if (next('"')) {
        *std = 0;
        close = '"';
    } else if (next('<')) {
        *std = 1;
        close = '>';
    } else {
        return ((void*)0);
    }
    Buffer *b = make_buffer();
    while (!next(close)) {
        int c = readc();
        if (c == EOF || c == '\n')
            errorp(p, "premature end of header name");
        buf_write(b, c);
    }
    if (buf_len(b) == 0)
        errorp(p, "header name should not be empty");
    buf_write(b, '\0');
    return buf_body(b);
}
