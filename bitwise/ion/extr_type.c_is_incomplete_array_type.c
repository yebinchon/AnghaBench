
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ incomplete_elems; } ;
typedef TYPE_1__ Type ;


 scalar_t__ is_array_type (TYPE_1__*) ;

bool is_incomplete_array_type(Type *type) {
    return type && is_array_type(type) && type->incomplete_elems;
}
