
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* sval; TYPE_1__* file; } ;
typedef TYPE_2__ Token ;
struct TYPE_5__ {int name; } ;


 int enable_warning ;
 int errort (TYPE_2__*,char*,char*) ;
 char* fullpath (int ) ;
 int map_put (int ,char*,void*) ;
 int once ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void parse_pragma_operand(Token *tok) {
    char *s = tok->sval;
    if (!strcmp(s, "once")) {
        char *path = fullpath(tok->file->name);
        map_put(once, path, (void *)1);
    } else if (!strcmp(s, "enable_warning")) {
        enable_warning = 1;
    } else if (!strcmp(s, "disable_warning")) {
        enable_warning = 0;
    } else {
        errort(tok, "unknown #pragma: %s", s);
    }
}
