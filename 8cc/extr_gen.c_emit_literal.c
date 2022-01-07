
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint64_t ;
typedef void* uint32_t ;
struct TYPE_5__ {float fval; void* slabel; TYPE_1__* ty; int sval; void* flabel; void* ival; } ;
struct TYPE_4__ {int kind; int size; } ;
typedef TYPE_2__ Node ;
 int SAVE ;
 int emit (char*,void*) ;
 int emit_label (void*) ;
 int emit_noindent (char*) ;
 int error (char*) ;
 void* make_label () ;
 void* quote_cstring_len (int ,int ) ;

__attribute__((used)) static void emit_literal(Node *node) {
    SAVE;
    switch (node->ty->kind) {
    case 136:
    case 135:
    case 128:
        emit("mov $%u, #rax", node->ival);
        break;
    case 132:
        emit("mov $%u, #rax", node->ival);
        break;
    case 129:
    case 130: {
        emit("mov $%lu, #rax", node->ival);
        break;
    }
    case 133: {
        if (!node->flabel) {
            node->flabel = make_label();
            float fval = node->fval;
            emit_noindent(".data");
            emit_label(node->flabel);
            emit(".long %d", *(uint32_t *)&fval);
            emit_noindent(".text");
        }
        emit("movss %s(#rip), #xmm0", node->flabel);
        break;
    }
    case 134:
    case 131: {
        if (!node->flabel) {
            node->flabel = make_label();
            emit_noindent(".data");
            emit_label(node->flabel);
            emit(".quad %lu", *(uint64_t *)&node->fval);
            emit_noindent(".text");
        }
        emit("movsd %s(#rip), #xmm0", node->flabel);
        break;
    }
    case 137: {
        if (!node->slabel) {
            node->slabel = make_label();
            emit_noindent(".data");
            emit_label(node->slabel);
            emit(".string \"%s\"", quote_cstring_len(node->sval, node->ty->size - 1));
            emit_noindent(".text");
        }
        emit("lea %s(#rip), #rax", node->slabel);
        break;
    }
    default:
        error("internal error");
    }
}
