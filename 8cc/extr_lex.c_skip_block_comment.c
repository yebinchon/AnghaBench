
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Pos ;


 int EOF ;
 int errorp (int ,char*) ;
 int get_pos (int) ;
 int readc () ;

__attribute__((used)) static void skip_block_comment() {
    Pos p = get_pos(-2);
    bool maybe_end = 0;
    for (;;) {
        int c = readc();
        if (c == EOF)
            errorp(p, "premature end of block comment");
        if (c == '/' && maybe_end)
            return;
        maybe_end = (c == '*');
    }
}
