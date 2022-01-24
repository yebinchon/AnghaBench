#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  kind; } ;
struct TYPE_10__ {int kind; char ival; char* fname; struct TYPE_10__* right; struct TYPE_10__* left; int /*<<< orphan*/  label; struct TYPE_10__* operand; TYPE_5__* ty; int /*<<< orphan*/  field; struct TYPE_10__* struc; int /*<<< orphan*/  stmts; struct TYPE_10__* retval; struct TYPE_10__* els; struct TYPE_10__* then; struct TYPE_10__* cond; TYPE_5__* totype; int /*<<< orphan*/  initoff; struct TYPE_10__* initval; int /*<<< orphan*/  declinit; TYPE_1__* declvar; struct TYPE_10__* body; int /*<<< orphan*/  params; int /*<<< orphan*/  args; int /*<<< orphan*/  varname; int /*<<< orphan*/  lvarinit; int /*<<< orphan*/  sval; int /*<<< orphan*/  fval; } ;
struct TYPE_9__ {char* varname; TYPE_5__* ty; } ;
typedef  TYPE_2__ Node ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
#define  AST_ADDR 179 
#define  AST_COMPOUND_STMT 178 
#define  AST_CONV 177 
#define  AST_DECL 176 
#define  AST_DEREF 175 
#define  AST_FUNC 174 
#define  AST_FUNCALL 173 
#define  AST_FUNCDESG 172 
#define  AST_FUNCPTR_CALL 171 
#define  AST_GOTO 170 
#define  AST_GVAR 169 
#define  AST_IF 168 
#define  AST_INIT 167 
#define  AST_LABEL 166 
#define  AST_LITERAL 165 
#define  AST_LVAR 164 
#define  AST_RETURN 163 
#define  AST_STRUCT_REF 162 
#define  AST_TERNARY 161 
#define  KIND_ARRAY 160 
#define  KIND_CHAR 159 
#define  KIND_DOUBLE 158 
#define  KIND_FLOAT 157 
#define  KIND_INT 156 
#define  KIND_LDOUBLE 155 
#define  KIND_LLONG 154 
#define  KIND_LONG 153 
#define  OP_A_ADD 152 
#define  OP_A_AND 151 
#define  OP_A_DIV 150 
#define  OP_A_MOD 149 
#define  OP_A_MUL 148 
#define  OP_A_OR 147 
#define  OP_A_SAL 146 
#define  OP_A_SAR 145 
#define  OP_A_SHR 144 
#define  OP_A_SUB 143 
#define  OP_A_XOR 142 
#define  OP_CAST 141 
 int const OP_EQ ; 
#define  OP_GE 140 
#define  OP_LABEL_ADDR 139 
#define  OP_LE 138 
#define  OP_LOGAND 137 
#define  OP_LOGOR 136 
#define  OP_NE 135 
#define  OP_POST_DEC 134 
#define  OP_POST_INC 133 
#define  OP_PRE_DEC 132 
#define  OP_PRE_INC 131 
#define  OP_SAL 130 
#define  OP_SAR 129 
#define  OP_SHR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(Buffer *b, Node *node) {
    if (!node) {
        FUNC2(b, "(nil)");
        return;
    }
    switch (node->kind) {
    case AST_LITERAL:
        switch (node->ty->kind) {
        case KIND_CHAR:
            if (node->ival == '\n')      FUNC2(b, "'\n'");
            else if (node->ival == '\\') FUNC2(b, "'\\\\'");
            else if (node->ival == '\0') FUNC2(b, "'\\0'");
            else FUNC2(b, "'%c'", node->ival);
            break;
        case KIND_INT:
            FUNC2(b, "%d", node->ival);
            break;
        case KIND_LONG:
            FUNC2(b, "%ldL", node->ival);
            break;
        case KIND_LLONG:
            FUNC2(b, "%lldL", node->ival);
            break;
        case KIND_FLOAT:
        case KIND_DOUBLE:
        case KIND_LDOUBLE:
            FUNC2(b, "%f", node->fval);
            break;
        case KIND_ARRAY:
            FUNC2(b, "\"%s\"", FUNC5(node->sval));
            break;
        default:
            FUNC3("internal error");
        }
        break;
    case AST_LABEL:
        FUNC2(b, "%s:", node->label);
        break;
    case AST_LVAR:
        FUNC2(b, "lv=%s", node->varname);
        if (node->lvarinit) {
            FUNC2(b, "(");
            FUNC0(b, node->lvarinit);
            FUNC2(b, ")");
        }
        break;
    case AST_GVAR:
        FUNC2(b, "gv=%s", node->varname);
        break;
    case AST_FUNCALL:
    case AST_FUNCPTR_CALL: {
        FUNC2(b, "(%s)%s(", FUNC6(node->ty),
                   node->kind == AST_FUNCALL ? node->fname : FUNC4(node));
        for (int i = 0; i < FUNC9(node->args); i++) {
            if (i > 0)
                FUNC2(b, ",");
            FUNC2(b, "%s", FUNC4(FUNC8(node->args, i)));
        }
        FUNC2(b, ")");
        break;
    }
    case AST_FUNCDESG: {
        FUNC2(b, "(funcdesg %s)", node->fname);
        break;
    }
    case AST_FUNC: {
        FUNC2(b, "(%s)%s(", FUNC6(node->ty), node->fname);
        for (int i = 0; i < FUNC9(node->params); i++) {
            if (i > 0)
                FUNC2(b, ",");
            Node *param = FUNC8(node->params, i);
            FUNC2(b, "%s %s", FUNC6(param->ty), FUNC4(param));
        }
        FUNC2(b, ")");
        FUNC10(b, node->body);
        break;
    }
    case AST_GOTO:
        FUNC2(b, "goto(%s)", node->label);
        break;
    case AST_DECL:
        FUNC2(b, "(decl %s %s",
                   FUNC6(node->declvar->ty),
                   node->declvar->varname);
        if (node->declinit) {
            FUNC2(b, " ");
            FUNC0(b, node->declinit);
        }
        FUNC2(b, ")");
        break;
    case AST_INIT:
        FUNC2(b, "%s@%d", FUNC4(node->initval), node->initoff, FUNC6(node->totype));
        break;
    case AST_CONV:
        FUNC2(b, "(conv %s=>%s)", FUNC4(node->operand), FUNC6(node->ty));
        break;
    case AST_IF:
        FUNC2(b, "(if %s %s",
                   FUNC4(node->cond),
                   FUNC4(node->then));
        if (node->els)
            FUNC2(b, " %s", FUNC4(node->els));
        FUNC2(b, ")");
        break;
    case AST_TERNARY:
        FUNC2(b, "(? %s %s %s)",
                   FUNC4(node->cond),
                   FUNC4(node->then),
                   FUNC4(node->els));
        break;
    case AST_RETURN:
        FUNC2(b, "(return %s)", FUNC4(node->retval));
        break;
    case AST_COMPOUND_STMT: {
        FUNC2(b, "{");
        for (int i = 0; i < FUNC9(node->stmts); i++) {
            FUNC10(b, FUNC8(node->stmts, i));
            FUNC2(b, ";");
        }
        FUNC2(b, "}");
        break;
    }
    case AST_STRUCT_REF:
        FUNC10(b, node->struc);
        FUNC2(b, ".");
        FUNC2(b, node->field);
        break;
    case AST_ADDR:  FUNC7(b, "addr", node); break;
    case AST_DEREF: FUNC7(b, "deref", node); break;
    case OP_SAL:  FUNC1(b, "<<", node); break;
    case OP_SAR:
    case OP_SHR:  FUNC1(b, ">>", node); break;
    case OP_GE:  FUNC1(b, ">=", node); break;
    case OP_LE:  FUNC1(b, "<=", node); break;
    case OP_NE:  FUNC1(b, "!=", node); break;
    case OP_PRE_INC: FUNC7(b, "pre++", node); break;
    case OP_PRE_DEC: FUNC7(b, "pre--", node); break;
    case OP_POST_INC: FUNC7(b, "post++", node); break;
    case OP_POST_DEC: FUNC7(b, "post--", node); break;
    case OP_LOGAND: FUNC1(b, "and", node); break;
    case OP_LOGOR:  FUNC1(b, "or", node); break;
    case OP_A_ADD:  FUNC1(b, "+=", node); break;
    case OP_A_SUB:  FUNC1(b, "-=", node); break;
    case OP_A_MUL:  FUNC1(b, "*=", node); break;
    case OP_A_DIV:  FUNC1(b, "/=", node); break;
    case OP_A_MOD:  FUNC1(b, "%=", node); break;
    case OP_A_AND:  FUNC1(b, "&=", node); break;
    case OP_A_OR:   FUNC1(b, "|=", node); break;
    case OP_A_XOR:  FUNC1(b, "^=", node); break;
    case OP_A_SAL:  FUNC1(b, "<<=", node); break;
    case OP_A_SAR:
    case OP_A_SHR:  FUNC1(b, ">>=", node); break;
    case '!': FUNC7(b, "!", node); break;
    case '&': FUNC1(b, "&", node); break;
    case '|': FUNC1(b, "|", node); break;
    case OP_CAST: {
        FUNC2(b, "((%s)=>(%s) %s)",
                   FUNC6(node->operand->ty),
                   FUNC6(node->ty),
                   FUNC4(node->operand));
        break;
    }
    case OP_LABEL_ADDR:
        FUNC2(b, "&&%s", node->label);
        break;
    default: {
        char *left = FUNC4(node->left);
        char *right = FUNC4(node->right);
        if (node->kind == OP_EQ)
            FUNC2(b, "(== ");
        else
            FUNC2(b, "(%c ", node->kind);
        FUNC2(b, "%s %s)", left, right);
    }
    }
}