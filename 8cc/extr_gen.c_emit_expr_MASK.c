#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {int kind; int /*<<< orphan*/  ty; int /*<<< orphan*/  struc; int /*<<< orphan*/  newlabel; struct TYPE_31__* operand; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
#define  AST_ADDR 153 
#define  AST_COMPOUND_STMT 152 
#define  AST_COMPUTED_GOTO 151 
#define  AST_CONV 150 
#define  AST_DECL 149 
#define  AST_DEREF 148 
#define  AST_FUNCALL 147 
#define  AST_FUNCDESG 146 
#define  AST_FUNCPTR_CALL 145 
#define  AST_GOTO 144 
#define  AST_GVAR 143 
#define  AST_IF 142 
#define  AST_LABEL 141 
#define  AST_LITERAL 140 
#define  AST_LVAR 139 
#define  AST_RETURN 138 
#define  AST_STRUCT_REF 137 
#define  AST_TERNARY 136 
#define  OP_CAST 135 
#define  OP_LABEL_ADDR 134 
#define  OP_LOGAND 133 
#define  OP_LOGOR 132 
#define  OP_POST_DEC 131 
#define  OP_POST_INC 130 
#define  OP_PRE_DEC 129 
#define  OP_PRE_INC 128 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC30(Node *node) {
    SAVE;
    FUNC29(node);
    switch (node->kind) {
    case AST_LITERAL: FUNC18(node); return;
    case AST_LVAR:    FUNC23(node); return;
    case AST_GVAR:    FUNC15(node); return;
    case AST_FUNCDESG: FUNC0(node); return;
    case AST_FUNCALL:
        if (FUNC28(node))
            return;
        // fall through
    case AST_FUNCPTR_CALL:
        FUNC13(node);
        return;
    case AST_DECL:    FUNC11(node); return;
    case AST_CONV:    FUNC10(node); return;
    case AST_ADDR:    FUNC0(node->operand); return;
    case AST_DEREF:   FUNC12(node); return;
    case AST_IF:
    case AST_TERNARY:
        FUNC27(node);
        return;
    case AST_GOTO:    FUNC14(node); return;
    case AST_LABEL:
        if (node->newlabel)
            FUNC16(node->newlabel);
        return;
    case AST_RETURN:  FUNC26(node); return;
    case AST_COMPOUND_STMT: FUNC8(node); return;
    case AST_STRUCT_REF:
        FUNC19(node->struc, node->ty, 0);
        return;
    case OP_PRE_INC:   FUNC25(node, "add"); return;
    case OP_PRE_DEC:   FUNC25(node, "sub"); return;
    case OP_POST_INC:  FUNC24(node, "add"); return;
    case OP_POST_DEC:  FUNC24(node, "sub"); return;
    case '!': FUNC21(node); return;
    case '&': FUNC3(node); return;
    case '|': FUNC5(node); return;
    case '~': FUNC4(node); return;
    case OP_LOGAND: FUNC20(node); return;
    case OP_LOGOR:  FUNC22(node); return;
    case OP_CAST:   FUNC6(node); return;
    case ',': FUNC7(node); return;
    case '=': FUNC1(node); return;
    case OP_LABEL_ADDR: FUNC17(node); return;
    case AST_COMPUTED_GOTO: FUNC9(node); return;
    default:
        FUNC2(node);
    }
}