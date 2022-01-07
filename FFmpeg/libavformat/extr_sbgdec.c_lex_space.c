
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_parser {char* cursor; char* end; } ;


 scalar_t__ is_space (char) ;

__attribute__((used)) static int lex_space(struct sbg_parser *p)
{
    char *c = p->cursor;

    while (p->cursor < p->end && is_space(*p->cursor))
        p->cursor++;
    return p->cursor > c;
}
