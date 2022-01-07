
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* s; } ;
typedef TYPE_1__ Parser ;
typedef int AVExpr ;


 int parse_primary (int **,TYPE_1__*) ;

__attribute__((used)) static int parse_pow(AVExpr **e, Parser *p, int *sign)
{
    *sign= (*p->s == '+') - (*p->s == '-');
    p->s += *sign&1;
    return parse_primary(e, p);
}
