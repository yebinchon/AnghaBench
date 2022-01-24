#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_61__   TYPE_9__ ;
typedef  struct TYPE_60__   TYPE_8__ ;
typedef  struct TYPE_59__   TYPE_7__ ;
typedef  struct TYPE_58__   TYPE_6__ ;
typedef  struct TYPE_57__   TYPE_5__ ;
typedef  struct TYPE_56__   TYPE_4__ ;
typedef  struct TYPE_55__   TYPE_3__ ;
typedef  struct TYPE_54__   TYPE_2__ ;
typedef  struct TYPE_53__   TYPE_29__ ;
typedef  struct TYPE_52__   TYPE_1__ ;
typedef  struct TYPE_51__   TYPE_18__ ;
typedef  struct TYPE_50__   TYPE_17__ ;
typedef  struct TYPE_49__   TYPE_16__ ;
typedef  struct TYPE_48__   TYPE_15__ ;
typedef  struct TYPE_47__   TYPE_14__ ;
typedef  struct TYPE_46__   TYPE_13__ ;
typedef  struct TYPE_45__   TYPE_12__ ;
typedef  struct TYPE_44__   TYPE_11__ ;
typedef  struct TYPE_43__   TYPE_10__ ;

/* Type definitions */
struct TYPE_44__ {TYPE_10__* fields; } ;
struct TYPE_49__ {int /*<<< orphan*/  typeid; int /*<<< orphan*/  kind; TYPE_11__ aggregate; } ;
typedef  TYPE_16__ Type ;
struct TYPE_61__ {size_t num_args; TYPE_18__** args; TYPE_18__* expr; } ;
struct TYPE_60__ {TYPE_18__* expr; int /*<<< orphan*/  type; } ;
struct TYPE_59__ {int /*<<< orphan*/  mod; int /*<<< orphan*/  val; } ;
struct TYPE_58__ {size_t end; size_t start; int /*<<< orphan*/  suffix; } ;
struct TYPE_57__ {size_t suffix; scalar_t__ val; int /*<<< orphan*/  mod; } ;
struct TYPE_56__ {TYPE_18__* expr; } ;
struct TYPE_55__ {int /*<<< orphan*/  op; int /*<<< orphan*/  post; int /*<<< orphan*/  expr; } ;
struct TYPE_54__ {int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct TYPE_53__ {long long ll; } ;
struct TYPE_52__ {TYPE_18__* else_expr; TYPE_18__* then_expr; TYPE_18__* cond; } ;
struct TYPE_48__ {TYPE_18__* right; int /*<<< orphan*/  op; TYPE_18__* left; } ;
struct TYPE_47__ {TYPE_18__* expr; int /*<<< orphan*/  op; } ;
struct TYPE_46__ {char* name; TYPE_18__* expr; } ;
struct TYPE_45__ {TYPE_18__* index; TYPE_18__* expr; } ;
struct TYPE_51__ {int kind; TYPE_3__ modify; TYPE_2__ offsetof_field; struct TYPE_51__* typeof_type; struct TYPE_51__* typeof_expr; int /*<<< orphan*/  alignof_type; struct TYPE_51__* alignof_expr; int /*<<< orphan*/  sizeof_type; struct TYPE_51__* sizeof_expr; TYPE_1__ ternary; TYPE_15__ binary; TYPE_14__ unary; TYPE_13__ field; TYPE_12__ index; TYPE_9__ call; TYPE_8__ cast; int /*<<< orphan*/  name; TYPE_7__ str_lit; TYPE_6__ float_lit; TYPE_5__ int_lit; TYPE_4__ paren; } ;
struct TYPE_50__ {int /*<<< orphan*/  kind; } ;
struct TYPE_43__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_17__ Sym ;
typedef  TYPE_18__ Expr ;

/* Variables and functions */
#define  EXPR_ALIGNOF_EXPR 153 
#define  EXPR_ALIGNOF_TYPE 152 
#define  EXPR_BINARY 151 
#define  EXPR_CALL 150 
#define  EXPR_CAST 149 
#define  EXPR_COMPOUND 148 
#define  EXPR_FIELD 147 
#define  EXPR_FLOAT 146 
#define  EXPR_INDEX 145 
#define  EXPR_INT 144 
#define  EXPR_MODIFY 143 
#define  EXPR_NAME 142 
#define  EXPR_NEW 141 
#define  EXPR_OFFSETOF 140 
#define  EXPR_PAREN 139 
#define  EXPR_SIZEOF_EXPR 138 
#define  EXPR_SIZEOF_TYPE 137 
#define  EXPR_STR 136 
#define  EXPR_TERNARY 135 
#define  EXPR_TYPEOF_EXPR 134 
#define  EXPR_TYPEOF_TYPE 133 
#define  EXPR_UNARY 132 
#define  MOD_BIN 131 
#define  MOD_CHAR 130 
#define  MOD_HEX 129 
 int /*<<< orphan*/  MOD_MULTILINE ; 
#define  MOD_OCT 128 
 int /*<<< orphan*/  SUFFIX_D ; 
 int /*<<< orphan*/  SYM_TYPE ; 
 int /*<<< orphan*/  TYPE_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_17__*,TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_18__*,int /*<<< orphan*/ ) ; 
 TYPE_17__* FUNC11 (TYPE_18__*) ; 
 TYPE_16__* FUNC12 (TYPE_18__*) ; 
 TYPE_29__ FUNC13 (TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_16__*) ; 
 int FUNC15 (TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_17__*) ; 
 TYPE_16__* FUNC17 (TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 char** token_suffix_names ; 
 TYPE_16__* FUNC19 (TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_16__*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 TYPE_16__* FUNC22 (TYPE_16__*) ; 

void FUNC23(Expr *expr) {
    Type *type = NULL;
    Type *conv = FUNC19(expr);
    if (conv) {
        FUNC8("(%s)(", FUNC20(conv, ""));
    }
    bool gen_any = FUNC15(expr);
    if (gen_any) {
        type = FUNC12(expr);
        FUNC8("(any){(%s[]){", FUNC20(type, ""));
    }
    switch (expr->kind) {
    case EXPR_PAREN:
        FUNC8("(");
        FUNC23(expr->paren.expr);
        FUNC8(")");
        break;
    case EXPR_INT: {
        const char *suffix_name = token_suffix_names[expr->int_lit.suffix];
        switch (expr->int_lit.mod) {
        case MOD_BIN:
        case MOD_HEX:
            FUNC8("0x%llx%s", expr->int_lit.val, suffix_name);
            break;
        case MOD_OCT:
            FUNC8("0%llo%s", expr->int_lit.val, suffix_name);
            break;
        case MOD_CHAR:
            FUNC1((char)expr->int_lit.val);
            break;
        default:
            FUNC8("%llu%s", expr->int_lit.val, suffix_name);
            break;
        }
        break;
    }
    case EXPR_FLOAT: {
        bool is_double = expr->float_lit.suffix == SUFFIX_D;
        size_t len = expr->float_lit.end - expr->float_lit.start;
        FUNC8("%.*s%s", is_double ? len-1 : len, expr->float_lit.start, is_double ? "" : "f");
        break;
    }
    case EXPR_STR:
        FUNC6(expr->str_lit.val, expr->str_lit.mod == MOD_MULTILINE);
        break;
    case EXPR_NAME:
        FUNC8("%s", FUNC10(expr, expr->name));
        break;
    case EXPR_CAST:
        FUNC8("(%s)(", FUNC21(expr->cast.type, ""));
        FUNC23(expr->cast.expr);
        FUNC8(")");
        break;
    case EXPR_CALL: {
        Sym *sym = FUNC11(expr->call.expr);
        if (FUNC16(sym)) {
            FUNC4(sym, expr);
        } else {
            if (sym && sym->kind == SYM_TYPE) {
                FUNC8("(%s)", FUNC9(sym));
            } else {
                FUNC23(expr->call.expr);
            }
            FUNC8("(");
            for (size_t i = 0; i < expr->call.num_args; i++) {
                if (i != 0) {
                    FUNC8(", ");
                }
                FUNC23(expr->call.args[i]);
            }
            FUNC8(")");
        }
        break;
    }
    case EXPR_INDEX: {
        Type *type = FUNC22(FUNC12(expr->index.expr));
        if (FUNC14(type)) {
            FUNC23(expr->index.expr);
            FUNC8(".");
            long long i = FUNC13(expr->index.index).ll;
            FUNC8("%s", type->aggregate.fields[i].name);
        } else {
            FUNC23(expr->index.expr);
            FUNC8("[");
            FUNC23(expr->index.index);
            FUNC8("]");
        }
        break;
    }
    case EXPR_FIELD: {
        Sym *sym = FUNC11(expr);
        if (sym) {
            FUNC8("(%s)", FUNC9(sym));
        } else {
            FUNC23(expr->field.expr);
            Type *type = FUNC22(FUNC12(expr->field.expr));
            const char *name = expr->field.name;
            FUNC8("%s%s", type->kind == TYPE_PTR ? "->" : ".", name);
        }
        break;
    }
    case EXPR_COMPOUND:
        FUNC2(expr);
        break;
    case EXPR_UNARY:
        FUNC8("%s(", FUNC18(expr->unary.op));
        FUNC23(expr->unary.expr);
        FUNC8(")");
        break;
    case EXPR_BINARY: {
        FUNC8("(");
        Type *left_promo = FUNC17(expr->binary.left);
        if (left_promo) {
            FUNC8("(%s)", FUNC20(left_promo, ""));
        }
        FUNC23(expr->binary.left);
        FUNC8(") %s (", FUNC18(expr->binary.op));
        Type *right_promo = FUNC17(expr->binary.right);
        if (right_promo) {
            FUNC8("(%s)", FUNC20(right_promo, ""));
        }
        FUNC23(expr->binary.right);
        FUNC8(")");
        break;
    }
    case EXPR_TERNARY:
        FUNC8("(");
        FUNC23(expr->ternary.cond);
        FUNC8(" ? ");
        FUNC23(expr->ternary.then_expr);
        FUNC8(" : ");
        FUNC23(expr->ternary.else_expr);
        FUNC8(")");
        break;
    case EXPR_SIZEOF_EXPR:
        FUNC8("sizeof(");
        FUNC23(expr->sizeof_expr);
        FUNC8(")");
        break;
    case EXPR_SIZEOF_TYPE:
        FUNC8("sizeof(%s)", FUNC21(expr->sizeof_type, ""));
        break;
    case EXPR_ALIGNOF_EXPR:
        FUNC8("alignof(%s)", FUNC20(FUNC12(expr->alignof_expr), ""));
        break;
    case EXPR_ALIGNOF_TYPE:
        FUNC8("alignof(%s)", FUNC21(expr->alignof_type, ""));
        break;
    case EXPR_TYPEOF_EXPR: {
        Type *type = FUNC12(expr->typeof_expr);
        FUNC0(type->typeid);
        FUNC7(type);
        break;
    }
    case EXPR_TYPEOF_TYPE: {
        Type *type = FUNC12(expr->typeof_type);
        FUNC0(type->typeid);
        FUNC7(type);
        break;
    }
    case EXPR_OFFSETOF:
        FUNC8("offsetof(%s, %s)", FUNC21(expr->offsetof_field.type, ""), expr->offsetof_field.name);
        break;
    case EXPR_MODIFY:
        if (!expr->modify.post) {
            FUNC8("%s", FUNC18(expr->modify.op));
        }
        FUNC5(expr->modify.expr);
        if (expr->modify.post) {
            FUNC8("%s", FUNC18(expr->modify.op));
        }
        break;
    case EXPR_NEW:
        FUNC3(expr);
        break;
    default:
        FUNC0(0);
    }
    if (gen_any) {
        FUNC8("}, ");
        FUNC7(type);
        FUNC8("}");
    }
    if (conv) {
        FUNC8(")");
    }
}