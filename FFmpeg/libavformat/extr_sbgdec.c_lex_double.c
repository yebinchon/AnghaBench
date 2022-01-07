
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_parser {char* cursor; char* end; } ;


 scalar_t__ is_space (char) ;
 double strtod (char*,char**) ;

__attribute__((used)) static int lex_double(struct sbg_parser *p, double *r)
{
    double d;
    char *end;

    if (p->cursor == p->end || is_space(*p->cursor) || *p->cursor == '\n')
        return 0;
    d = strtod(p->cursor, &end);
    if (end > p->cursor) {
        *r = d;
        p->cursor = end;
        return 1;
    }
    return 0;
}
