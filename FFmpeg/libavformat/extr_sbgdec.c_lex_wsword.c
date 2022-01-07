
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_string {char* s; char* e; } ;
struct sbg_parser {char* cursor; char* end; } ;


 int is_space (char) ;
 int lex_space (struct sbg_parser*) ;

__attribute__((used)) static int lex_wsword(struct sbg_parser *p, struct sbg_string *rs)
{
    char *s = p->cursor, *c = s;

    if (s == p->end || *s == '\n')
        return 0;
    while (c < p->end && *c != '\n' && !is_space(*c))
        c++;
    rs->s = s;
    rs->e = p->cursor = c;
    lex_space(p);
    return 1;
}
