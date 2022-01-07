
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* ty; } ;
struct TYPE_8__ {TYPE_1__* ptr; } ;
struct TYPE_7__ {int size; } ;
typedef TYPE_3__ Node ;


 int SAVE ;
 int emit (char*,...) ;
 int emit_expr (TYPE_3__*) ;
 int error (char*,char) ;
 int pop (char*) ;
 int push (char*) ;

__attribute__((used)) static void emit_pointer_arith(char kind, Node *left, Node *right) {
    SAVE;
    emit_expr(left);
    push("rcx");
    push("rax");
    emit_expr(right);
    int size = left->ty->ptr->size;
    if (size > 1)
        emit("imul $%d, #rax", size);
    emit("mov #rax, #rcx");
    pop("rax");
    switch (kind) {
    case '+': emit("add #rcx, #rax"); break;
    case '-': emit("sub #rcx, #rax"); break;
    default: error("invalid operator '%d'", kind);
    }
    pop("rcx");
}
