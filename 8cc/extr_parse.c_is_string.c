
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; TYPE_1__* ptr; } ;
typedef TYPE_2__ Type ;
struct TYPE_4__ {scalar_t__ kind; } ;


 scalar_t__ KIND_ARRAY ;
 scalar_t__ KIND_CHAR ;

__attribute__((used)) static bool is_string(Type *ty) {
    return ty->kind == KIND_ARRAY && ty->ptr->kind == KIND_CHAR;
}
