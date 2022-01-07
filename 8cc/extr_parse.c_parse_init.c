
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;


 int define_builtin (char*,int ,int *) ;
 int make_ptr_type (int ) ;
 int * make_vector () ;
 int * make_vector1 (int ) ;
 int type_int ;
 int type_void ;
 int vec_push (int *,int ) ;

void parse_init() {
    Vector *voidptr = make_vector1(make_ptr_type(type_void));
    Vector *two_voidptrs = make_vector();
    vec_push(two_voidptrs, make_ptr_type(type_void));
    vec_push(two_voidptrs, make_ptr_type(type_void));
    define_builtin("__builtin_return_address", make_ptr_type(type_void), voidptr);
    define_builtin("__builtin_reg_class", type_int, voidptr);
    define_builtin("__builtin_va_arg", type_void, two_voidptrs);
    define_builtin("__builtin_va_start", type_void, voidptr);
}
