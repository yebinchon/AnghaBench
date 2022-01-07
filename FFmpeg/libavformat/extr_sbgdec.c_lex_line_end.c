
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_parser {char* cursor; char* end; int line_no; } ;


 int lex_space (struct sbg_parser*) ;

__attribute__((used)) static int lex_line_end(struct sbg_parser *p)
{
    if (p->cursor < p->end && *p->cursor == '#') {
        p->cursor++;
        while (p->cursor < p->end && *p->cursor != '\n')
            p->cursor++;
    }
    if (p->cursor == p->end)

        return 1;
    if (*p->cursor != '\n')
        return 0;
    p->cursor++;
    p->line_no++;
    lex_space(p);
    return 1;
}
