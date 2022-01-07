
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; scalar_t__ usig; } ;
typedef TYPE_1__ Type ;



__attribute__((used)) static bool same_arith_type(Type *t, Type *u) {
    return t->kind == u->kind && t->usig == u->usig;
}
