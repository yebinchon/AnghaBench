
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_5__ {size_t num_params; int has_varargs; int block; int * varargs_type; int * ret_type; int params; } ;
struct TYPE_6__ {TYPE_1__ func; } ;
typedef int StmtList ;
typedef int SrcPos ;
typedef int FuncParam ;
typedef TYPE_2__ Decl ;


 int AST_DUP (int *) ;
 int DECL_FUNC ;
 TYPE_2__* new_decl (int ,int ,char const*) ;

Decl *new_decl_func(SrcPos pos, const char *name, FuncParam *params, size_t num_params, Typespec *ret_type, bool has_varargs, Typespec *varargs_type, StmtList block) {
    Decl *d = new_decl(DECL_FUNC, pos, name);
    d->func.params = AST_DUP(params);
    d->func.num_params = num_params;
    d->func.ret_type = ret_type;
    d->func.has_varargs = has_varargs;
    d->func.varargs_type = varargs_type;
    d->func.block = block;
    return d;
}
