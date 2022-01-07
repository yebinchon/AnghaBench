
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_10__ {int kind; TYPE_9__* ptr; } ;
typedef TYPE_1__ Type ;
struct TYPE_12__ {int const kind; int size; } ;
struct TYPE_11__ {float fval; int glabel; int kind; struct TYPE_11__* operand; TYPE_1__* ty; int sval; int newlabel; } ;
typedef TYPE_2__ Node ;


 int AST_ADDR ;
 int AST_CONV ;
 int AST_GVAR ;
 int KIND_ARRAY ;
 int OP_LABEL_ADDR ;
 int assert (TYPE_9__*) ;
 int emit (char*,int,...) ;
 int emit_data_charptr (int ,int) ;
 int error (char*,char*,...) ;
 int eval_intexpr (TYPE_2__*,TYPE_2__**) ;
 char* node2s (TYPE_2__*) ;
 int ty2s (TYPE_1__*) ;

__attribute__((used)) static void emit_data_primtype(Type *ty, Node *val, int depth) {
    switch (ty->kind) {
    case 133: {
        float f = val->fval;
        emit(".long %d", *(uint32_t *)&f);
        break;
    }
    case 134:
        emit(".quad %ld", *(uint64_t *)&val->fval);
        break;
    case 136:
        emit(".byte %d", !!eval_intexpr(val, ((void*)0)));
        break;
    case 135:
        emit(".byte %d", eval_intexpr(val, ((void*)0)));
        break;
    case 128:
        emit(".short %d", eval_intexpr(val, ((void*)0)));
        break;
    case 132:
        emit(".long %d", eval_intexpr(val, ((void*)0)));
        break;
    case 130:
    case 131:
    case 129:
        if (val->kind == OP_LABEL_ADDR) {
            emit(".quad %s", val->newlabel);
            break;
        }
        bool is_char_ptr = (val->operand->ty->kind == KIND_ARRAY && val->operand->ty->ptr->kind == 135);
        if (is_char_ptr) {
            emit_data_charptr(val->operand->sval, depth);
        } else if (val->kind == AST_GVAR) {
            emit(".quad %s", val->glabel);
        } else {
            Node *base = ((void*)0);
            int v = eval_intexpr(val, &base);
            if (base == ((void*)0)) {
                emit(".quad %u", v);
                break;
            }
            Type *ty = base->ty;
            if (base->kind == AST_CONV || base->kind == AST_ADDR)
                base = base->operand;
            if (base->kind != AST_GVAR)
                error("global variable expected, but got %s", node2s(base));
            assert(ty->ptr);
            emit(".quad %s+%u", base->glabel, v * ty->ptr->size);
        }
        break;
    default:
        error("don't know how to handle\n  <%s>\n  <%s>", ty2s(ty), node2s(val));
    }
}
