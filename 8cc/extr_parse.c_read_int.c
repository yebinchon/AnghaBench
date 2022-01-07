
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Type ;
struct TYPE_4__ {char* sval; } ;
typedef TYPE_1__ Token ;
typedef int Node ;


 scalar_t__ INT_MAX ;
 scalar_t__ LONG_MAX ;
 scalar_t__ UINT_MAX ;
 int * ast_inttype (int *,long) ;
 int errort (TYPE_1__*,char*,char,char*) ;
 int * read_int_suffix (char*) ;
 int strncasecmp (char*,char*,int) ;
 long strtoul (char*,char**,int) ;
 int * type_int ;
 int * type_long ;
 int * type_uint ;
 int * type_ulong ;

__attribute__((used)) static Node *read_int(Token *tok) {
    char *s = tok->sval;
    char *end;
    long v = !strncasecmp(s, "0b", 2)
        ? strtoul(s + 2, &end, 2) : strtoul(s, &end, 0);
    Type *ty = read_int_suffix(end);
    if (ty)
        return ast_inttype(ty, v);
    if (*end != '\0')
        errort(tok, "invalid character '%c': %s", *end, s);



    bool base10 = (*s != '0');
    if (base10) {
        ty = !(v & ~(long)INT_MAX) ? type_int : type_long;
        return ast_inttype(ty, v);
    }

    ty = !(v & ~(unsigned long)INT_MAX) ? type_int
        : !(v & ~(unsigned long)UINT_MAX) ? type_uint
        : !(v & ~(unsigned long)LONG_MAX) ? type_long
        : type_ulong;
    return ast_inttype(ty, v);
}
