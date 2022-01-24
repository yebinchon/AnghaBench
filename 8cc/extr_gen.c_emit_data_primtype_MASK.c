#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {int kind; TYPE_9__* ptr; } ;
typedef  TYPE_1__ Type ;
struct TYPE_12__ {int const kind; int size; } ;
struct TYPE_11__ {float fval; int /*<<< orphan*/  glabel; int /*<<< orphan*/  kind; struct TYPE_11__* operand; TYPE_1__* ty; int /*<<< orphan*/  sval; int /*<<< orphan*/  newlabel; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  AST_ADDR ; 
 int /*<<< orphan*/  AST_CONV ; 
 int /*<<< orphan*/  AST_GVAR ; 
 int KIND_ARRAY ; 
#define  KIND_BOOL 136 
#define  KIND_CHAR 135 
#define  KIND_DOUBLE 134 
#define  KIND_FLOAT 133 
#define  KIND_INT 132 
#define  KIND_LLONG 131 
#define  KIND_LONG 130 
#define  KIND_PTR 129 
#define  KIND_SHORT 128 
 int /*<<< orphan*/  OP_LABEL_ADDR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int FUNC4 (TYPE_2__*,TYPE_2__**) ; 
 char* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(Type *ty, Node *val, int depth) {
    switch (ty->kind) {
    case KIND_FLOAT: {
        float f = val->fval;
        FUNC1(".long %d", *(uint32_t *)&f);
        break;
    }
    case KIND_DOUBLE:
        FUNC1(".quad %ld", *(uint64_t *)&val->fval);
        break;
    case KIND_BOOL:
        FUNC1(".byte %d", !!FUNC4(val, NULL));
        break;
    case KIND_CHAR:
        FUNC1(".byte %d", FUNC4(val, NULL));
        break;
    case KIND_SHORT:
        FUNC1(".short %d", FUNC4(val, NULL));
        break;
    case KIND_INT:
        FUNC1(".long %d", FUNC4(val, NULL));
        break;
    case KIND_LONG:
    case KIND_LLONG:
    case KIND_PTR:
        if (val->kind == OP_LABEL_ADDR) {
            FUNC1(".quad %s", val->newlabel);
            break;
        }
        bool is_char_ptr = (val->operand->ty->kind == KIND_ARRAY && val->operand->ty->ptr->kind == KIND_CHAR);
        if (is_char_ptr) {
            FUNC2(val->operand->sval, depth);
        } else if (val->kind == AST_GVAR) {
            FUNC1(".quad %s", val->glabel);
        } else {
            Node *base = NULL;
            int v = FUNC4(val, &base);
            if (base == NULL) {
                FUNC1(".quad %u", v);
                break;
            }
            Type *ty = base->ty;
            if (base->kind == AST_CONV || base->kind == AST_ADDR)
                base = base->operand;
            if (base->kind != AST_GVAR)
                FUNC3("global variable expected, but got %s", FUNC5(base));
            FUNC0(ty->ptr);
            FUNC1(".quad %s+%u", base->glabel, v * ty->ptr->size);
        }
        break;
    default:
        FUNC3("don't know how to handle\n  <%s>\n  <%s>", FUNC6(ty), FUNC5(val));
    }
}