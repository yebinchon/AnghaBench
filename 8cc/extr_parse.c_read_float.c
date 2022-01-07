
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* sval; } ;
typedef TYPE_1__ Token ;
typedef int Node ;


 int * ast_floattype (int ,double) ;
 int errort (TYPE_1__*,char*,char,char*) ;
 int strcasecmp (char*,char*) ;
 double strtod (char*,char**) ;
 int type_double ;
 int type_float ;
 int type_ldouble ;

__attribute__((used)) static Node *read_float(Token *tok) {
    char *s = tok->sval;
    char *end;
    double v = strtod(s, &end);

    if (!strcasecmp(end, "l"))
        return ast_floattype(type_ldouble, v);
    if (!strcasecmp(end, "f"))
        return ast_floattype(type_float, v);
    if (*end != '\0')
        errort(tok, "invalid character '%c': %s", *end, s);
    return ast_floattype(type_double, v);
}
