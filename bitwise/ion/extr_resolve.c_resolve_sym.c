
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int Type ;
struct TYPE_15__ {int type; } ;
struct TYPE_14__ {int type; } ;
struct TYPE_17__ {scalar_t__ kind; scalar_t__ is_incomplete; int pos; TYPE_2__ enum_decl; TYPE_1__ typedef_decl; } ;
struct TYPE_16__ {scalar_t__ state; int kind; int type; int val; int home_package; TYPE_4__* decl; scalar_t__ reachable; } ;
typedef TYPE_3__ Sym ;
typedef int Package ;
typedef TYPE_4__ Decl ;


 scalar_t__ DECL_ENUM ;
 scalar_t__ DECL_STRUCT ;
 scalar_t__ DECL_TYPEDEF ;
 scalar_t__ DECL_UNION ;



 scalar_t__ SYM_RESOLVED ;
 scalar_t__ SYM_RESOLVING ;

 scalar_t__ SYM_UNRESOLVED ;

 int assert (int) ;
 int buf_push (int ,TYPE_3__*) ;
 int * enter_package (int ) ;
 int fatal_error (int ,char*) ;
 int is_decl_foreign (TYPE_4__*) ;
 int is_integer_type (int *) ;
 int is_local_sym (TYPE_3__*) ;
 int leave_package (int *) ;
 scalar_t__ reachable_phase ;
 int reachable_syms ;
 int resolve_decl_const (TYPE_4__*,int *) ;
 int resolve_decl_func (TYPE_4__*) ;
 int resolve_decl_var (TYPE_4__*) ;
 int * resolve_typespec (int ) ;
 int resolve_typespec_strict (int ,int ) ;
 int sorted_syms ;
 int type_enum (TYPE_3__*,int *) ;
 int type_incomplete (TYPE_3__*) ;
 int * type_int ;

void resolve_sym(Sym *sym) {
    if (sym->state == SYM_RESOLVED) {
        return;
    } else if (sym->state == SYM_RESOLVING) {
        fatal_error(sym->decl->pos, "Cyclic dependency");
        return;
    }
    assert(sym->state == SYM_UNRESOLVED);
    assert(!sym->reachable);
    if (!is_local_sym(sym)) {
        buf_push(reachable_syms, sym);
        sym->reachable = reachable_phase;
    }
    sym->state = SYM_RESOLVING;
    Decl *decl = sym->decl;
    Package *old_package = enter_package(sym->home_package);
    switch (sym->kind) {
    case 129:
        if (decl && decl->kind == DECL_TYPEDEF) {
            sym->type = resolve_typespec_strict(decl->typedef_decl.type, is_decl_foreign(decl));
        } else if (decl->kind == DECL_ENUM) {
            Type *base = decl->enum_decl.type ? resolve_typespec(decl->enum_decl.type) : type_int;
            if (!is_integer_type(base)) {
                fatal_error(decl->pos, "Base type of enum must be integer type");
            }
            sym->type = type_enum(sym, base);
        } else {
            sym->type = type_incomplete(sym);
        }
        break;
    case 128:
        sym->type = resolve_decl_var(decl);
        break;
    case 132:
        sym->type = resolve_decl_const(decl, &sym->val);
        break;
    case 131:
        sym->type = resolve_decl_func(decl);
        break;
    case 130:

        break;
    default:
        assert(0);
        break;
    }
    leave_package(old_package);
    sym->state = SYM_RESOLVED;
    if (decl->is_incomplete || (decl->kind != DECL_STRUCT && decl->kind != DECL_UNION)) {
        buf_push(sorted_syms, sym);
    }
}
