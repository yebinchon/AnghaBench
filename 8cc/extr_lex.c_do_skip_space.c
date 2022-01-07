
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 scalar_t__ iswhitespace (int) ;
 scalar_t__ next (char) ;
 int readc () ;
 int skip_block_comment () ;
 int skip_line () ;
 int unreadc (int) ;

__attribute__((used)) static bool do_skip_space() {
    int c = readc();
    if (c == EOF)
        return 0;
    if (iswhitespace(c))
        return 1;
    if (c == '/') {
        if (next('*')) {
            skip_block_comment();
            return 1;
        }
        if (next('/')) {
            skip_line();
            return 1;
        }
    }
    unreadc(c);
    return 0;
}
