
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef long uint64_t ;
typedef long uint32_t ;
struct TYPE_7__ {int kind; } ;
typedef TYPE_1__ Type ;
struct TYPE_8__ {long ival; float fval; } ;
typedef TYPE_2__ Node ;
 int emit (char*,long,int) ;
 int error (char*,int ,char*,int) ;
 int node2s (TYPE_2__*) ;
 char* ty2s (TYPE_1__*) ;

__attribute__((used)) static void emit_save_literal(Node *node, Type *totype, int off) {
    switch (totype->kind) {
    case 137: emit("movb $%d, %d(#rbp)", !!node->ival, off); break;
    case 136: emit("movb $%d, %d(#rbp)", node->ival, off); break;
    case 128: emit("movw $%d, %d(#rbp)", node->ival, off); break;
    case 133: emit("movl $%d, %d(#rbp)", node->ival, off); break;
    case 130:
    case 131:
    case 129: {
        emit("movl $%lu, %d(#rbp)", ((uint64_t)node->ival) & ((1L << 32) - 1), off);
        emit("movl $%lu, %d(#rbp)", ((uint64_t)node->ival) >> 32, off + 4);
        break;
    }
    case 134: {
        float fval = node->fval;
        emit("movl $%u, %d(#rbp)", *(uint32_t *)&fval, off);
        break;
    }
    case 135:
    case 132: {
        emit("movl $%lu, %d(#rbp)", *(uint64_t *)&node->fval & ((1L << 32) - 1), off);
        emit("movl $%lu, %d(#rbp)", *(uint64_t *)&node->fval >> 32, off + 4);
        break;
    }
    default:
        error("internal error: <%s> <%s> <%d>", node2s(node), ty2s(totype), off);
    }
}
