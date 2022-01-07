
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; int type; } ;
typedef TYPE_1__ Sym ;


 scalar_t__ SYM_TYPE ;
 int assert (int) ;
 scalar_t__ builtin_package ;
 scalar_t__ current_package ;
 TYPE_1__* resolve_name (int ) ;
 int str_intern (char*) ;
 int type_allocator ;
 int type_allocator_ptr ;
 int type_ptr (int ) ;

void postinit_builtin(void) {
    assert(current_package == builtin_package);
    Sym *sym = resolve_name(str_intern("Allocator"));
    if (sym) {
        assert(sym->kind == SYM_TYPE);
        type_allocator = sym->type;
        type_allocator_ptr = type_ptr(type_allocator);
    }
}
