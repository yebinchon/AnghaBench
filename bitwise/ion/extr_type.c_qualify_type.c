
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; struct TYPE_9__* base; } ;
typedef TYPE_1__ Type ;


 scalar_t__ TYPE_CONST ;
 TYPE_1__* type_const (TYPE_1__*) ;
 TYPE_1__* unqualify_type (TYPE_1__*) ;

Type *qualify_type(Type *type, Type *qual) {
    type = unqualify_type(type);
    while (qual->kind == TYPE_CONST) {
        type = type_const(type);
        qual = qual->base;
    }
    return type;
}
