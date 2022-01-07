
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t num_args; int has_varargs; TYPE_2__* ret; int args; } ;
struct TYPE_9__ {TYPE_1__ func; } ;
typedef TYPE_2__ Typespec ;
typedef int SrcPos ;


 int AST_DUP (TYPE_2__**) ;
 int TYPESPEC_FUNC ;
 TYPE_2__* new_typespec (int ,int ) ;

Typespec *new_typespec_func(SrcPos pos, Typespec **args, size_t num_args, Typespec *ret, bool has_varargs) {
    Typespec *t = new_typespec(TYPESPEC_FUNC, pos);
    t->func.args = AST_DUP(args);
    t->func.num_args = num_args;
    t->func.ret = ret;
    t->func.has_varargs = has_varargs;
    return t;
}
