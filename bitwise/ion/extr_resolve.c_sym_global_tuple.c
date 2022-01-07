
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Type ;
struct TYPE_6__ {char const* external_name; int reachable; int * type; int state; } ;
typedef TYPE_1__ Sym ;
typedef int Package ;


 int REACHABLE_NATURAL ;
 int SYM_RESOLVED ;
 int SYM_TYPE ;
 int buf_push (int ,TYPE_1__*) ;
 int builtin_package ;
 int * enter_package (int ) ;
 int leave_package (int *) ;
 int reachable_syms ;
 int sorted_syms ;
 int sym_global_put (char const*,TYPE_1__*) ;
 TYPE_1__* sym_new (int ,char const*,int *) ;

Sym *sym_global_tuple(const char *name, Type *type) {
    Sym *sym = sym_new(SYM_TYPE, name, ((void*)0));
    sym->state = SYM_RESOLVED;
    sym->type = type;
    sym->external_name = name;
    Package *old_package = enter_package(builtin_package);
    sym_global_put(name, sym);
    leave_package(old_package);
    buf_push(sorted_syms, sym);
    buf_push(reachable_syms, sym);
    sym->reachable = REACHABLE_NATURAL;
    return sym;
}
