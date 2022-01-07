
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kind; int name; } ;
typedef int SymKind ;
typedef int Sym ;
typedef TYPE_1__ Decl ;
 int SYM_CONST ;
 int SYM_FUNC ;
 int SYM_NONE ;
 int SYM_TYPE ;
 int SYM_VAR ;
 int assert (int ) ;
 int process_decl_notes (TYPE_1__*,int *) ;
 int set_resolved_sym (TYPE_1__*,int *) ;
 int * sym_new (int ,int ,TYPE_1__*) ;

Sym *sym_decl(Decl *decl) {
    SymKind kind = SYM_NONE;
    switch (decl->kind) {
    case 131:
    case 129:
    case 130:
    case 133:
        kind = SYM_TYPE;
        break;
    case 128:
        kind = SYM_VAR;
        break;
    case 134:
        kind = SYM_CONST;
        break;
    case 132:
        kind = SYM_FUNC;
        break;
    default:
        assert(0);
        break;
    }
    Sym *sym = sym_new(kind, decl->name, decl);
    set_resolved_sym(decl, sym);
    process_decl_notes(decl, sym);
    return sym;
}
