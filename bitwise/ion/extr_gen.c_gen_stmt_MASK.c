#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_9__ ;
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_21__ ;
typedef  struct TYPE_31__   TYPE_1__ ;
typedef  struct TYPE_30__   TYPE_15__ ;
typedef  struct TYPE_29__   TYPE_14__ ;
typedef  struct TYPE_28__   TYPE_13__ ;
typedef  struct TYPE_27__   TYPE_12__ ;
typedef  struct TYPE_26__   TYPE_11__ ;
typedef  struct TYPE_25__   TYPE_10__ ;

/* Type definitions */
struct TYPE_39__ {long long ll; } ;
typedef  TYPE_8__ Val ;
struct TYPE_40__ {TYPE_14__* start; TYPE_14__* end; } ;
struct TYPE_32__ {int /*<<< orphan*/  stmts; } ;
struct TYPE_38__ {TYPE_21__ block; TYPE_12__* next; TYPE_14__* cond; TYPE_12__* init; } ;
struct TYPE_37__ {TYPE_14__* cond; TYPE_21__ block; } ;
struct TYPE_36__ {size_t num_elseifs; TYPE_12__* init; TYPE_21__ else_block; TYPE_15__* elseifs; TYPE_21__ then_block; TYPE_14__* cond; } ;
struct TYPE_35__ {int /*<<< orphan*/  name; } ;
struct TYPE_34__ {char* name; int /*<<< orphan*/  pos; TYPE_14__* expr; } ;
struct TYPE_33__ {char* val; } ;
struct TYPE_31__ {size_t num_cases; TYPE_10__* cases; TYPE_14__* expr; } ;
struct TYPE_30__ {TYPE_21__ block; TYPE_14__* cond; } ;
struct TYPE_29__ {TYPE_2__ str_lit; int /*<<< orphan*/  pos; int /*<<< orphan*/  kind; } ;
struct TYPE_28__ {int num_args; int /*<<< orphan*/  pos; TYPE_3__* args; int /*<<< orphan*/  name; } ;
struct TYPE_27__ {int kind; int /*<<< orphan*/  label; TYPE_1__ switch_stmt; TYPE_7__ for_stmt; TYPE_6__ while_stmt; TYPE_5__ if_stmt; TYPE_4__ init; int /*<<< orphan*/  pos; TYPE_13__ note; TYPE_21__ block; TYPE_14__* expr; } ;
struct TYPE_26__ {size_t num_stmts; TYPE_12__** stmts; } ;
struct TYPE_25__ {size_t num_patterns; TYPE_11__ block; int /*<<< orphan*/  is_default; TYPE_9__* patterns; } ;
typedef  TYPE_9__ SwitchCasePattern ;
typedef  TYPE_10__ SwitchCase ;
typedef  TYPE_11__ StmtList ;
typedef  TYPE_12__ Stmt ;
typedef  TYPE_13__ Note ;
typedef  TYPE_14__ Expr ;
typedef  TYPE_15__ ElseIf ;

/* Variables and functions */
 int /*<<< orphan*/  EXPR_STR ; 
#define  STMT_BLOCK 139 
#define  STMT_BREAK 138 
#define  STMT_CONTINUE 137 
#define  STMT_DO_WHILE 136 
#define  STMT_FOR 135 
#define  STMT_GOTO 134 
#define  STMT_IF 133 
#define  STMT_LABEL 132 
#define  STMT_NOTE 131 
#define  STMT_RETURN 130 
#define  STMT_SWITCH 129 
#define  STMT_WHILE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  assert_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  complete_name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  foreign_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_14__*) ; 
 int /*<<< orphan*/  gen_indent ; 
 int /*<<< orphan*/  gen_postamble_buf ; 
 int /*<<< orphan*/  gen_preamble_buf ; 
 int /*<<< orphan*/  FUNC6 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_21__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 TYPE_8__ FUNC12 (TYPE_14__*) ; 
 TYPE_13__* FUNC13 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_14__*) ; 
 char* FUNC15 (char*) ; 

void FUNC16(Stmt *stmt) {
    FUNC8(stmt->pos);
    switch (stmt->kind) {
    case STMT_RETURN:
        FUNC11("return");
        if (stmt->expr) {
            FUNC9(" ");
            FUNC5(stmt->expr);
        }
        FUNC9(";");
        break;
    case STMT_BREAK:
        FUNC11("break;");
        break;
    case STMT_CONTINUE:
        FUNC11("continue;");
        break;
    case STMT_BLOCK:
        FUNC10();
        FUNC7(stmt->block);
        break;
    case STMT_NOTE: {
        Note note = stmt->note;
        if (note.name == assert_name) {
            FUNC11("assert(");
            FUNC0(note.num_args == 1);
            FUNC5(note.args[0].expr);
            FUNC9(");");
        } else if (note.name == foreign_name) {
            const char *preamble_name = FUNC15("preamble");
            const char *postamble_name = FUNC15("postamble");
            for (size_t i = 0; i < note.num_args; i++) {
                const char *name = note.args[i].name;
                Expr *expr = note.args[i].expr;
                if (expr->kind != EXPR_STR) {
                    FUNC2(expr->pos, "#foreign argument must be a string");
                }
                const char *str = expr->str_lit.val;
                if (name == preamble_name) {
                    FUNC3(&gen_preamble_buf, note.args[i].pos);
                    FUNC1(gen_preamble_buf, "%s\n", str);
                } else if (name == postamble_name) {
                    FUNC3(&gen_postamble_buf, note.args[i].pos);
                    FUNC1(gen_postamble_buf, "%s\n", str);
                }
            }
        }
        break;
    }
    case STMT_IF:
        if (stmt->if_stmt.init) {
            FUNC11("{");
            gen_indent++;
            FUNC16(stmt->if_stmt.init);
        }
        FUNC8(stmt->pos);
        FUNC11("if (");
        if (stmt->if_stmt.cond) {
            FUNC5(stmt->if_stmt.cond);
        } else {
            FUNC9("%s", stmt->if_stmt.init->init.name);
        }
        FUNC9(") ");
        FUNC7(stmt->if_stmt.then_block);
        for (size_t i = 0; i < stmt->if_stmt.num_elseifs; i++) {
            ElseIf elseif = stmt->if_stmt.elseifs[i];
            FUNC9(" else if (");
            FUNC5(elseif.cond);
            FUNC9(") ");
            FUNC7(elseif.block);
        }
        if (stmt->if_stmt.else_block.stmts) {
            FUNC9(" else ");
            FUNC7(stmt->if_stmt.else_block);
        } else {
            Note *complete_note = FUNC13(stmt, complete_name);
            if (complete_note) {
                FUNC9(" else {");
                gen_indent++;
                FUNC8(complete_note->pos);
                FUNC11("assert(\"@complete if/elseif chain failed to handle case\" && 0);");
                gen_indent--;
                FUNC11("}");
            }
        }
        if (stmt->if_stmt.init) {
            gen_indent--;
            FUNC11("}");
        }
        break;
    case STMT_WHILE:
        FUNC11("while (");
        FUNC5(stmt->while_stmt.cond);
        FUNC9(") ");
        FUNC7(stmt->while_stmt.block);
        break;
    case STMT_DO_WHILE:
        FUNC11("do ");
        FUNC7(stmt->while_stmt.block);
        FUNC9(" while (");
        FUNC5(stmt->while_stmt.cond);
        FUNC9(");");
        break;
    case STMT_FOR:
        FUNC11("for (");
        if (stmt->for_stmt.init) {
            FUNC6(stmt->for_stmt.init);
        }
        FUNC9(";");
        if (stmt->for_stmt.cond) {
            FUNC9(" ");
            FUNC5(stmt->for_stmt.cond);
        }
        FUNC9(";");
        if (stmt->for_stmt.next) {
            FUNC9(" ");
            FUNC6(stmt->for_stmt.next);
        }
        FUNC9(") ");
        FUNC7(stmt->for_stmt.block);
        break;
    case STMT_SWITCH: {
        FUNC11("switch (");
        FUNC5(stmt->switch_stmt.expr);
        FUNC9(") {");
        bool has_default = false;
        for (size_t i = 0; i < stmt->switch_stmt.num_cases; i++) {
            SwitchCase switch_case = stmt->switch_stmt.cases[i];
            for (size_t j = 0; j < switch_case.num_patterns; j++) {
                SwitchCasePattern pattern = switch_case.patterns[j];
                if (pattern.end) {
                    Val start_val = FUNC12(pattern.start);
                    Val end_val = FUNC12(pattern.end);
                    if (FUNC14(pattern.start) && FUNC14(pattern.end)) {
                        FUNC10();
                        for (int c = (int)start_val.ll; c <= (int)end_val.ll; c++) {
                            FUNC9("case ");
                            FUNC4(c);
                            FUNC9(": ");
                        } 
                    } else {
                        FUNC11("// ");
                        FUNC5(pattern.start);
                        FUNC9("...");
                        FUNC5(pattern.end);
                        FUNC10();
                        for (long long ll = start_val.ll; ll <= end_val.ll; ll++) {
                            FUNC9("case %lld: ", ll);
                        }
                    }
                } else {
                    FUNC11("case ");
                    FUNC5(pattern.start);
                    FUNC9(":");
                }
            }
            if (switch_case.is_default) {
                has_default = true;
                FUNC11("default:");
            }
            FUNC9(" ");
            FUNC9("{");
            gen_indent++;
            StmtList block = switch_case.block;
            for (size_t j = 0; j < block.num_stmts; j++) {
                FUNC16(block.stmts[j]);
            }
            FUNC11("break;");
            gen_indent--;
            FUNC11("}");
        }
        if (!has_default) {
            Note *note = FUNC13(stmt, complete_name);
            if (note) {
                FUNC11("default:");
                gen_indent++;
                FUNC11("assert(\"@complete switch failed to handle case\" && 0);");
                FUNC11("break;");
                gen_indent--;
            }
        }
        FUNC11("}");
        break;
    }
    case STMT_LABEL:
        FUNC11("%s: ;", stmt->label);
        break;
    case STMT_GOTO:
        FUNC11("goto %s;", stmt->label);
        break;
    default:
        FUNC10();
        FUNC6(stmt);
        FUNC9(";");
        break;
    }
}