
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kind; char* glabel; TYPE_1__* ty; int lvarinit; } ;
struct TYPE_4__ {int size; } ;
typedef TYPE_2__ Node ;




 int do_emit_data (int ,int ,int ,int) ;
 int emit (char*,...) ;
 int emit_label (char*) ;
 int error (char*) ;
 char* make_label () ;

__attribute__((used)) static void emit_data_addr(Node *operand, int depth) {
    switch (operand->kind) {
    case 128: {
        char *label = make_label();
        emit(".data %d", depth + 1);
        emit_label(label);
        do_emit_data(operand->lvarinit, operand->ty->size, 0, depth + 1);
        emit(".data %d", depth);
        emit(".quad %s", label);
        return;
    }
    case 129:
        emit(".quad %s", operand->glabel);
        return;
    default:
        error("internal error");
    }
}
