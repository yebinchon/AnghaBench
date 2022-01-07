
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_parser {int cursor; } ;
typedef int int64_t ;


 int str_to_time (int,int *) ;

__attribute__((used)) static int lex_time(struct sbg_parser *p, int64_t *rt)
{
    int r = str_to_time(p->cursor, rt);
    p->cursor += r;
    return r > 0;
}
