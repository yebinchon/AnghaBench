
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;


 scalar_t__ KIND_VOID ;
 int error (char*) ;

__attribute__((used)) static void ensure_not_void(Type *ty) {
    if (ty->kind == KIND_VOID)
        error("void is not allowed");
}
