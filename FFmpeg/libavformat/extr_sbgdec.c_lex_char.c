
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_parser {char* cursor; char* end; } ;



__attribute__((used)) static int lex_char(struct sbg_parser *p, char c)
{
    int r = p->cursor < p->end && *p->cursor == c;

    p->cursor += r;
    return r;
}
