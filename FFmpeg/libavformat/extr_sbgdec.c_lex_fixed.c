
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_parser {int end; int cursor; } ;


 scalar_t__ memcmp (int,char const*,int) ;

__attribute__((used)) static int lex_fixed(struct sbg_parser *p, const char *t, int l)
{
    if (p->end - p->cursor < l || memcmp(p->cursor, t, l))
        return 0;
    p->cursor += l;
    return 1;
}
