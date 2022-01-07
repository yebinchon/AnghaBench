
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_6__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;


 scalar_t__ KIND_ARRAY ;
 scalar_t__ KIND_FUNC ;
 int error (char*) ;
 TYPE_1__* read_func_param_list (int *,TYPE_1__*) ;

__attribute__((used)) static Type *read_declarator_func(Type *basety, Vector *param) {
    if (basety->kind == KIND_FUNC)
        error("function returning a function");
    if (basety->kind == KIND_ARRAY)
        error("function returning an array");
    return read_func_param_list(param, basety);
}
