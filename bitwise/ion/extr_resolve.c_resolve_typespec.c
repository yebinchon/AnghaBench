
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Typespec ;
typedef int Type ;


 int * resolve_typespec_strict (int *,int) ;

Type *resolve_typespec(Typespec *typespec) {
    return resolve_typespec_strict(typespec, 0);
}
