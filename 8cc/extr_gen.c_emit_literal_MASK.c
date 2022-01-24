#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  void* uint32_t ;
struct TYPE_5__ {float fval; void* slabel; TYPE_1__* ty; int /*<<< orphan*/  sval; void* flabel; void* ival; } ;
struct TYPE_4__ {int kind; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
#define  KIND_ARRAY 137 
#define  KIND_BOOL 136 
#define  KIND_CHAR 135 
#define  KIND_DOUBLE 134 
#define  KIND_FLOAT 133 
#define  KIND_INT 132 
#define  KIND_LDOUBLE 131 
#define  KIND_LLONG 130 
#define  KIND_LONG 129 
#define  KIND_SHORT 128 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(Node *node) {
    SAVE;
    switch (node->ty->kind) {
    case KIND_BOOL:
    case KIND_CHAR:
    case KIND_SHORT:
        FUNC0("mov $%u, #rax", node->ival);
        break;
    case KIND_INT:
        FUNC0("mov $%u, #rax", node->ival);
        break;
    case KIND_LONG:
    case KIND_LLONG: {
        FUNC0("mov $%lu, #rax", node->ival);
        break;
    }
    case KIND_FLOAT: {
        if (!node->flabel) {
            node->flabel = FUNC4();
            float fval = node->fval;
            FUNC2(".data");
            FUNC1(node->flabel);
            FUNC0(".long %d", *(uint32_t *)&fval);
            FUNC2(".text");
        }
        FUNC0("movss %s(#rip), #xmm0", node->flabel);
        break;
    }
    case KIND_DOUBLE:
    case KIND_LDOUBLE: {
        if (!node->flabel) {
            node->flabel = FUNC4();
            FUNC2(".data");
            FUNC1(node->flabel);
            FUNC0(".quad %lu", *(uint64_t *)&node->fval);
            FUNC2(".text");
        }
        FUNC0("movsd %s(#rip), #xmm0", node->flabel);
        break;
    }
    case KIND_ARRAY: {
        if (!node->slabel) {
            node->slabel = FUNC4();
            FUNC2(".data");
            FUNC1(node->slabel);
            FUNC0(".string \"%s\"", FUNC5(node->sval, node->ty->size - 1));
            FUNC2(".text");
        }
        FUNC0("lea %s(#rip), #rax", node->slabel);
        break;
    }
    default:
        FUNC3("internal error");
    }
}