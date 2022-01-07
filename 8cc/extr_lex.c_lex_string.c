
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;
typedef int Pos ;


 scalar_t__ EOF ;
 int * do_read_token () ;
 int errorp (int ,char*,char*) ;
 int get_pos (int ) ;
 int make_file_string (char*) ;
 int next (char) ;
 scalar_t__ peek () ;
 int stream_stash (int ) ;
 int stream_unstash () ;

Token *lex_string(char *s) {
    stream_stash(make_file_string(s));
    Token *r = do_read_token();
    next('\n');
    Pos p = get_pos(0);
    if (peek() != EOF)
        errorp(p, "unconsumed input: %s", s);
    stream_unstash();
    return r;
}
