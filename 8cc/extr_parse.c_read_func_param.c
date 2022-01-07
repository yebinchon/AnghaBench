
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; struct TYPE_9__* ptr; } ;
typedef TYPE_1__ Type ;


 int DECL_PARAM ;
 int DECL_PARAM_TYPEONLY ;
 scalar_t__ KIND_ARRAY ;
 scalar_t__ KIND_FUNC ;
 int errort (int ,char*,int ) ;
 scalar_t__ is_type (int ) ;
 TYPE_1__* make_ptr_type (TYPE_1__*) ;
 int peek () ;
 TYPE_1__* read_decl_spec (int*) ;
 TYPE_1__* read_declarator (char**,TYPE_1__*,int *,int ) ;
 int tok2s (int ) ;
 TYPE_1__* type_int ;

__attribute__((used)) static Type *read_func_param(char **name, bool optional) {
    int sclass = 0;
    Type *basety = type_int;
    if (is_type(peek())) {
        basety = read_decl_spec(&sclass);
    } else if (optional) {
        errort(peek(), "type expected, but got %s", tok2s(peek()));
    }
    Type *ty = read_declarator(name, basety, ((void*)0), optional ? DECL_PARAM_TYPEONLY : DECL_PARAM);


    if (ty->kind == KIND_ARRAY)
        return make_ptr_type(ty->ptr);


    if (ty->kind == KIND_FUNC)
        return make_ptr_type(ty);
    return ty;
}
