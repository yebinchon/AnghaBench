
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int typeid; } ;
typedef TYPE_1__ Type ;
struct TYPE_15__ {int kind; } ;
struct TYPE_14__ {TYPE_3__* decl; } ;
typedef TYPE_2__ Sym ;
typedef TYPE_3__ Decl ;




 TYPE_2__** buf_end (TYPE_2__**) ;
 int buf_len (TYPE_1__**) ;
 int genlnf (char*,char*,char const*,...) ;
 char* get_gen_name (TYPE_2__*) ;
 scalar_t__ is_decl_foreign (TYPE_3__*) ;
 int is_sym_reachable (TYPE_2__*) ;
 scalar_t__ is_tuple_reachable (TYPE_1__*) ;
 TYPE_2__** sorted_syms ;
 TYPE_1__** tuple_types ;

void gen_forward_decls(void) {
    for (int i = 0; i < buf_len(tuple_types); i++) {
        Type *type = tuple_types[i];
        if (is_tuple_reachable(type)) {
            genlnf("typedef struct tuple%d tuple%d;", type->typeid, type->typeid);
        }
    }
    for (Sym **it = sorted_syms; it != buf_end(sorted_syms); it++) {
        Sym *sym = *it;
        Decl *decl = sym->decl;
        if (!decl || !is_sym_reachable(sym)) {
            continue;
        }
        if (is_decl_foreign(decl)) {
            continue;
        }
        switch (decl->kind) {
        case 129:
        case 128: {
            const char *name = get_gen_name(sym);
            genlnf("typedef %s %s %s;", decl->kind == 129 ? "struct" : "union", name, name);
            break;
        }
        default:

            break;
        }
    }
}
