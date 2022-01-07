
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; int num_elems; } ;
typedef TYPE_1__ Typespec ;


 scalar_t__ TYPESPEC_ARRAY ;

bool is_incomplete_array_typespec(Typespec *typespec) {
    return typespec->kind == TYPESPEC_ARRAY && !typespec->num_elems;
}
