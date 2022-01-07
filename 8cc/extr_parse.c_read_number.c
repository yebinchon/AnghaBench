
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* sval; } ;
typedef TYPE_1__ Token ;
typedef int Node ;


 int * read_float (TYPE_1__*) ;
 int * read_int (TYPE_1__*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 scalar_t__ strpbrk (char*,char*) ;

__attribute__((used)) static Node *read_number(Token *tok) {
    char *s = tok->sval;
    bool isfloat = strpbrk(s, ".pP") || (strncasecmp(s, "0x", 2) && strpbrk(s, "eE"));
    return isfloat ? read_float(tok) : read_int(tok);
}
