#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_43__   TYPE_9__ ;
typedef  struct TYPE_42__   TYPE_8__ ;
typedef  struct TYPE_41__   TYPE_7__ ;
typedef  struct TYPE_40__   TYPE_6__ ;
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_22__ ;
typedef  struct TYPE_34__   TYPE_1__ ;
typedef  struct TYPE_33__   TYPE_17__ ;
typedef  struct TYPE_32__   TYPE_15__ ;
typedef  struct TYPE_31__   TYPE_13__ ;
typedef  struct TYPE_30__   TYPE_12__ ;
typedef  struct TYPE_29__   TYPE_11__ ;
typedef  struct TYPE_28__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_43__ {int is_break_legal; int is_continue_legal; } ;
struct TYPE_33__ {int num_stmts; TYPE_10__** stmts; } ;
struct TYPE_42__ {size_t num_patterns; TYPE_17__ block; int /*<<< orphan*/  is_default; TYPE_7__* patterns; } ;
struct TYPE_41__ {TYPE_12__* end; TYPE_12__* start; } ;
struct TYPE_40__ {size_t num_cases; TYPE_8__* cases; int /*<<< orphan*/  expr; } ;
struct TYPE_39__ {TYPE_17__ block; TYPE_10__* next; int /*<<< orphan*/  cond; TYPE_10__* init; } ;
struct TYPE_38__ {TYPE_17__ block; int /*<<< orphan*/  cond; } ;
struct TYPE_37__ {size_t num_elseifs; TYPE_17__ else_block; TYPE_13__* elseifs; TYPE_17__ then_block; TYPE_10__* init; int /*<<< orphan*/  cond; } ;
struct TYPE_36__ {int /*<<< orphan*/  name; } ;
struct TYPE_35__ {int num_args; int /*<<< orphan*/  name; TYPE_1__* args; } ;
struct TYPE_34__ {int /*<<< orphan*/  expr; } ;
struct TYPE_32__ {int ll; } ;
struct TYPE_31__ {TYPE_17__ block; int /*<<< orphan*/  cond; } ;
struct TYPE_30__ {int /*<<< orphan*/  pos; } ;
struct TYPE_29__ {TYPE_15__ val; int /*<<< orphan*/ * type; } ;
struct TYPE_28__ {int kind; int /*<<< orphan*/  label; int /*<<< orphan*/  pos; int /*<<< orphan*/  expr; TYPE_6__ switch_stmt; TYPE_5__ for_stmt; TYPE_4__ while_stmt; TYPE_3__ if_stmt; TYPE_2__ init; TYPE_22__ note; TYPE_17__ block; } ;
typedef  int /*<<< orphan*/  Sym ;
typedef  TYPE_7__ SwitchCasePattern ;
typedef  TYPE_8__ SwitchCase ;
typedef  TYPE_9__ StmtCtx ;
typedef  TYPE_10__ Stmt ;
typedef  TYPE_11__ Operand ;
typedef  TYPE_12__ Expr ;
typedef  TYPE_13__ ElseIf ;

/* Variables and functions */
#define  STMT_ASSIGN 142 
#define  STMT_BLOCK 141 
#define  STMT_BREAK 140 
#define  STMT_CONTINUE 139 
#define  STMT_DO_WHILE 138 
#define  STMT_EXPR 137 
#define  STMT_FOR 136 
#define  STMT_GOTO 135 
#define  STMT_IF 134 
#define  STMT_INIT 133 
#define  STMT_LABEL 132 
#define  STMT_NOTE 131 
#define  STMT_RETURN 130 
#define  STMT_SWITCH 129 
#define  STMT_WHILE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  assert_name ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  foreign_name ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_11__ FUNC9 (TYPE_12__*) ; 
 TYPE_11__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_11__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_22__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_10__*) ; 
 int FUNC16 (TYPE_17__,int /*<<< orphan*/ *,TYPE_9__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_12__*,TYPE_15__) ; 
 int /*<<< orphan*/  static_assert_name ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * type_llong ; 
 int /*<<< orphan*/ * type_void ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 

bool FUNC22(Stmt *stmt, Type *ret_type, StmtCtx ctx) {
    switch (stmt->kind) {
    case STMT_RETURN:
        if (stmt->expr) {
            Operand operand = FUNC10(stmt->expr, ret_type);
            if (!FUNC1(&operand, ret_type)) {
                FUNC3(stmt->pos, "Invalid type in return expression. Expected %s, got %s", FUNC4(ret_type), FUNC4(operand.type));
            }
        } else if (ret_type != type_void) {
            FUNC3(stmt->pos, "Empty return expression for function with non-void return type");
        }
        return true;
    case STMT_BREAK:
        if (!ctx.is_break_legal) {
            FUNC3(stmt->pos, "Illegal break");
        }
        return false;
    case STMT_CONTINUE:
        if (!ctx.is_continue_legal) {
            FUNC3(stmt->pos, "Illegal continue");
        }
        return false;
    case STMT_BLOCK:
        return FUNC16(stmt->block, ret_type, ctx);
    case STMT_NOTE:
        if (stmt->note.name == assert_name) {
            if (stmt->note.num_args != 1) {
                FUNC3(stmt->pos, "#assert takes 1 argument");
            }
            FUNC8(stmt->note.args[0].expr);
        } else if (stmt->note.name == static_assert_name) {
            FUNC14(stmt->note);
        } else if (stmt->note.name == foreign_name) {
            // TODO: check args
        } else {
            FUNC21(stmt->pos, "Unknown statement #directive '%s'", stmt->note.name);
        }
        return false;
    case STMT_IF: {
        Sym *scope = FUNC19();
        if (stmt->if_stmt.init) {
            FUNC17(stmt->if_stmt.init);
        }
        if (stmt->if_stmt.cond) {
            FUNC8(stmt->if_stmt.cond);
        } else if (!FUNC5(FUNC13(stmt->pos, stmt->if_stmt.init->init.name))) {
            FUNC3(stmt->pos, "Conditional expression must have scalar type");
        }
        bool returns = FUNC16(stmt->if_stmt.then_block, ret_type, ctx);
        for (size_t i = 0; i < stmt->if_stmt.num_elseifs; i++) {
            ElseIf elseif = stmt->if_stmt.elseifs[i];
            FUNC8(elseif.cond);
            returns = FUNC16(elseif.block, ret_type, ctx) && returns;
        }
        if (stmt->if_stmt.else_block.stmts) {
            returns = FUNC16(stmt->if_stmt.else_block, ret_type, ctx) && returns;
        } else {
            returns = false;
        }
        FUNC20(scope);
        return returns;
    }
    case STMT_WHILE:
    case STMT_DO_WHILE:
        FUNC8(stmt->while_stmt.cond);
        ctx.is_break_legal = true;
        ctx.is_continue_legal = true;
        FUNC16(stmt->while_stmt.block, ret_type, ctx);
        return false;
    case STMT_FOR: {
        Sym *scope = FUNC19();
        if (stmt->for_stmt.init) {
            FUNC22(stmt->for_stmt.init, ret_type, ctx);
        }
        if (stmt->for_stmt.cond) {
            FUNC8(stmt->for_stmt.cond);
        }
        if (stmt->for_stmt.next) {
            FUNC22(stmt->for_stmt.next, ret_type, ctx);
        }
        ctx.is_break_legal = true;
        ctx.is_continue_legal = true;
        FUNC16(stmt->for_stmt.block, ret_type, ctx);
        FUNC20(scope);
        return false;
    }
    case STMT_SWITCH: {
        Operand operand = FUNC12(stmt->switch_stmt.expr);
        if (!FUNC6(operand.type)) {
            FUNC3(stmt->pos, "Switch expression must have integer type");
        }
        ctx.is_break_legal = true;
        bool returns = true;
        bool has_default = false;
        for (size_t i = 0; i < stmt->switch_stmt.num_cases; i++) {
            SwitchCase switch_case = stmt->switch_stmt.cases[i];
            for (size_t j = 0; j < switch_case.num_patterns; j++) {
                SwitchCasePattern pattern = switch_case.patterns[j];
                Expr *start_expr = pattern.start;
                Operand start_operand = FUNC9(start_expr);
                if (!FUNC1(&start_operand, operand.type)) {
                    FUNC3(start_expr->pos, "Invalid type in switch case expression. Expected %s, got %s", FUNC4(operand.type), FUNC4(start_operand.type));
                }
                Expr *end_expr = pattern.end;
                if (end_expr) {
                    Operand end_operand = FUNC9(end_expr);
                    if (!FUNC1(&end_operand, operand.type)) {
                        FUNC3(end_expr->pos, "Invalid type in switch case expression. Expected %s, got %s", FUNC4(operand.type), FUNC4(end_operand.type));
                    }
                    FUNC1(&start_operand, type_llong);
                    FUNC18(start_expr, start_operand.val);
                    FUNC1(&end_operand, type_llong);
                    FUNC18(end_expr, end_operand.val);
                    if (end_operand.val.ll < start_operand.val.ll) {
                        FUNC3(start_expr->pos, "Case range end value cannot be less thn start value");
                    }
                    if (end_operand.val.ll - start_operand.val.ll >= 256) {
                        FUNC3(start_expr->pos, "Case range cannot span more than 256 values");
                    }
                }
            }
            if (switch_case.is_default) {
                if (has_default) {
                    FUNC3(stmt->pos, "Switch statement has multiple default clauses");
                }
                has_default = true;
            }
            if (switch_case.block.num_stmts > 1) {
                Stmt *last_stmt = switch_case.block.stmts[switch_case.block.num_stmts - 1];
                if (last_stmt->kind == STMT_BREAK) {
                    FUNC21(last_stmt->pos, "Case blocks already end with an implicit break");
                }
            }
            returns = FUNC16(switch_case.block, ret_type, ctx) && returns;
        }
        return returns && has_default;
    }
    case STMT_ASSIGN:
        FUNC15(stmt);
        return false;
    case STMT_INIT:
        FUNC17(stmt);
        return false;
    case STMT_EXPR:
        FUNC11(stmt->expr);
        return false;
    case STMT_LABEL:
        FUNC2(stmt->pos, stmt->label);
        return false;
    case STMT_GOTO:
        FUNC7(stmt->pos, stmt->label);
        return false;
    default:
        FUNC0(0);
        return false;
    }
}