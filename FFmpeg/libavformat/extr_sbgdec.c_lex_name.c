
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_string {char* s; char* e; } ;
struct sbg_parser {char* cursor; char* end; } ;



__attribute__((used)) static int lex_name(struct sbg_parser *p, struct sbg_string *rs)
{
    char *s = p->cursor, *c = s;

    while (c < p->end && ((*c >= 'a' && *c <= 'z') || (*c >= 'A' && *c <= 'Z')
           || (*c >= '0' && *c <= '9') || *c == '_' || *c == '-'))
        c++;
    if (c == s)
        return 0;
    rs->s = s;
    rs->e = p->cursor = c;
    return 1;
}
