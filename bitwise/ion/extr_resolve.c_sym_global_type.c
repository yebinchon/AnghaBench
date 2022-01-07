
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Type ;
struct TYPE_5__ {char const* external_name; int * type; int state; } ;
typedef TYPE_1__ Sym ;


 int SYM_RESOLVED ;
 int SYM_TYPE ;
 char* str_intern (char const*) ;
 int sym_global_put (char const*,TYPE_1__*) ;
 TYPE_1__* sym_new (int ,char const*,int *) ;

Sym *sym_global_type(const char *name, Type *type) {
    name = str_intern(name);
    Sym *sym = sym_new(SYM_TYPE, name, ((void*)0));
    sym->state = SYM_RESOLVED;
    sym->type = type;
    sym->external_name = name;
    sym_global_put(name, sym);
    return sym;
}
