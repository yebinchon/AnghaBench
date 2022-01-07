
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; } ;
typedef TYPE_1__ Type ;


 TYPE_1__* copy_type (TYPE_1__*) ;

__attribute__((used)) static Type *copy_incomplete_type(Type *ty) {
    if (!ty) return ((void*)0);
    return (ty->len == -1) ? copy_type(ty) : ty;
}
