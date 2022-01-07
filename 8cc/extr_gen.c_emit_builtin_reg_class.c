
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kind; } ;
typedef TYPE_2__ Type ;
struct TYPE_9__ {TYPE_1__* ty; int args; } ;
struct TYPE_7__ {scalar_t__ kind; TYPE_2__* ptr; } ;
typedef TYPE_3__ Node ;


 scalar_t__ KIND_PTR ;
 scalar_t__ KIND_STRUCT ;
 int assert (int) ;
 int emit (char*) ;
 scalar_t__ is_flotype (TYPE_2__*) ;
 TYPE_3__* vec_get (int ,int ) ;

__attribute__((used)) static void emit_builtin_reg_class(Node *node) {
    Node *arg = vec_get(node->args, 0);
    assert(arg->ty->kind == KIND_PTR);
    Type *ty = arg->ty->ptr;
    if (ty->kind == KIND_STRUCT)
        emit("mov $2, #eax");
    else if (is_flotype(ty))
        emit("mov $1, #eax");
    else
        emit("mov $0, #eax");
}
