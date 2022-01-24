#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  name; int /*<<< orphan*/  kind; int /*<<< orphan*/  base; int /*<<< orphan*/  pos; } ;
typedef  TYPE_3__ Typespec ;
struct TYPE_27__ {int /*<<< orphan*/  num_elems; } ;
typedef  TYPE_4__ Type ;
struct TYPE_25__ {TYPE_3__* right; int /*<<< orphan*/  op; TYPE_3__* left; } ;
struct TYPE_24__ {char* name; TYPE_3__* expr; int /*<<< orphan*/  is_undef; TYPE_3__* type; } ;
struct TYPE_28__ {int kind; TYPE_2__ assign; TYPE_1__ init; TYPE_3__* expr; } ;
typedef  TYPE_5__ Stmt ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EXPR_NAME ; 
#define  STMT_ASSIGN 130 
#define  STMT_EXPR 129 
#define  STMT_INIT 128 
 int /*<<< orphan*/  TOKEN_ADD_ASSIGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (TYPE_4__*) ; 
 TYPE_4__* FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char*) ; 
 TYPE_4__* FUNC15 (TYPE_4__*) ; 

void FUNC16(Stmt *stmt) {
    switch (stmt->kind) {
    case STMT_EXPR:
        FUNC1(stmt->expr);
        break;
    case STMT_INIT:
        if (stmt->init.type) {
            Typespec *init_typespec = stmt->init.type;
            bool incomplete = FUNC5(stmt->init.type);
            if (incomplete && !stmt->init.expr) {
                Type *init_type = FUNC4(stmt->init.type);
                FUNC2("%s = 0", FUNC13(FUNC11(init_type), stmt->init.name));
            } else {
                if (incomplete && FUNC6(FUNC4(stmt->init.expr))) {
                    FUNC2("%s", FUNC13(FUNC4(stmt->init.expr), stmt->init.name));
                    if (stmt->init.expr) {
                        if (!stmt->init.is_undef) {
                            FUNC2(" = ");
                            FUNC1(stmt->init.expr);
                        }
                    } else {
                        FUNC2(" = {0}");
                    }
                } else {
                    if (incomplete) {
                        Expr *size = FUNC7(init_typespec->pos, FUNC4(stmt->init.expr)->num_elems, 0, 0);
                        init_typespec = FUNC8(init_typespec->pos, init_typespec->base, size);
                    }
                    FUNC2("%s", FUNC14(stmt->init.type, stmt->init.name));
                    if (stmt->init.expr) {
                        if (!stmt->init.is_undef) {
                            FUNC2(" = ");
                            FUNC1(stmt->init.expr);
                        }
                    } else if (!stmt->init.is_undef) {
                        FUNC2(" = {0}");
                    }
                }
            }
        } else {
            FUNC2("%s = ", FUNC13(FUNC15(FUNC4(stmt->init.expr)), stmt->init.name));
            FUNC1(stmt->init.expr);
        }
        break;
    case STMT_ASSIGN: {
        Type *promo_type = FUNC9(stmt->assign.left);
        if (promo_type) {
            FUNC0(stmt->assign.op == TOKEN_ADD_ASSIGN);
            Type *left_type = FUNC4(stmt->assign.left);
            if (stmt->assign.left->kind == EXPR_NAME) {
                const char *name = FUNC3(stmt->assign.left, stmt->assign.left->name);
                FUNC2("%s = (char *)(%s) + ", name, name);
                FUNC1(stmt->assign.right);
            } else {
                // TODO: this is an ugly codegen template that needs to avoid both illegal aliasing and multiple evaluation.
                // However, 99.9% of use cases will use a name on the left-hand side, and we handle that cleanly.
                FUNC2("do { %s = (%s)&(", FUNC13(FUNC12(left_type), "__pp"), FUNC13(FUNC12(left_type), ""));
                FUNC1(stmt->assign.left);
                FUNC2("); *__pp = (%s)(*(char **)__pp + ", FUNC13(left_type, ""));
                FUNC1(stmt->assign.right);
                FUNC2("); } while(0)");
            }
        } else {
            FUNC1(stmt->assign.left);
            FUNC2(" %s ", FUNC10(stmt->assign.op));
            FUNC1(stmt->assign.right);
        }
        break;
    }
    default:
        FUNC0(0);
    }
}