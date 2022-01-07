
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int type; } ;
struct TYPE_15__ {int type; } ;
struct TYPE_14__ {int type; } ;
struct TYPE_13__ {int type; int expr; } ;
struct TYPE_17__ {int kind; TYPE_4__ enum_decl; TYPE_3__ typedef_decl; int type; TYPE_2__ var; TYPE_1__ const_decl; int pos; struct TYPE_17__* decl; } ;
typedef TYPE_5__ Sym ;
typedef TYPE_5__ Decl ;
 int assert (int ) ;
 int gen_aggregate (TYPE_5__*) ;
 int gen_expr (int ) ;
 int gen_func_decl (TYPE_5__*) ;
 int gen_sync_pos (int ) ;
 int genf (char*,...) ;
 int genln () ;
 int genlnf (char*,...) ;
 char* get_gen_name (TYPE_5__*) ;
 scalar_t__ is_decl_foreign (TYPE_5__*) ;
 int is_decl_threadlocal (TYPE_5__*) ;
 int is_incomplete_array_typespec (int ) ;
 int type_to_cdecl (int ,char*) ;
 char* typespec_to_cdecl (int ,char*) ;

void gen_decl(Sym *sym) {
    Decl *decl = sym->decl;
    if (!decl || is_decl_foreign(decl)) {
        return;
    }
    gen_sync_pos(decl->pos);
    switch (decl->kind) {
    case 135:
        genlnf("#define %s (", get_gen_name(sym));
        if (decl->const_decl.type) {
            genf("(%s)(", typespec_to_cdecl(decl->const_decl.type, ""));
        }
        gen_expr(decl->const_decl.expr);
        if (decl->const_decl.type) {
            genf(")");
        }
        genf(")");
        break;
    case 128:
        if (is_decl_threadlocal(decl)) {
            genlnf("THREADLOCAL");
        }
        genlnf("extern ");
        if (decl->var.type && !is_incomplete_array_typespec(decl->var.type)) {
            genf("%s", typespec_to_cdecl(decl->var.type, get_gen_name(sym)));
        } else {
            genf("%s", type_to_cdecl(sym->type, get_gen_name(sym)));
        }
        genf(";");
        break;
    case 133:
        gen_func_decl(decl);
        genf(";");
        break;
    case 131:
    case 129:
        gen_aggregate(decl);
        break;
    case 130:
        genlnf("typedef %s;", typespec_to_cdecl(decl->typedef_decl.type, get_gen_name(sym)));
        break;
    case 134:
        if (decl->enum_decl.type) {
            genlnf("typedef %s;", typespec_to_cdecl(decl->enum_decl.type, get_gen_name(decl)));
        } else {
            genlnf("typedef int %s;", get_gen_name(decl));
        }
        break;
    case 132:

        break;
    default:
        assert(0);
        break;
    }
    genln();
}
