
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_9__ ;
typedef struct TYPE_42__ TYPE_8__ ;
typedef struct TYPE_41__ TYPE_7__ ;
typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_22__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_17__ ;
typedef struct TYPE_32__ TYPE_15__ ;
typedef struct TYPE_31__ TYPE_13__ ;
typedef struct TYPE_30__ TYPE_12__ ;
typedef struct TYPE_29__ TYPE_11__ ;
typedef struct TYPE_28__ TYPE_10__ ;


typedef int Type ;
struct TYPE_43__ {int is_break_legal; int is_continue_legal; } ;
struct TYPE_33__ {int num_stmts; TYPE_10__** stmts; } ;
struct TYPE_42__ {size_t num_patterns; TYPE_17__ block; int is_default; TYPE_7__* patterns; } ;
struct TYPE_41__ {TYPE_12__* end; TYPE_12__* start; } ;
struct TYPE_40__ {size_t num_cases; TYPE_8__* cases; int expr; } ;
struct TYPE_39__ {TYPE_17__ block; TYPE_10__* next; int cond; TYPE_10__* init; } ;
struct TYPE_38__ {TYPE_17__ block; int cond; } ;
struct TYPE_37__ {size_t num_elseifs; TYPE_17__ else_block; TYPE_13__* elseifs; TYPE_17__ then_block; TYPE_10__* init; int cond; } ;
struct TYPE_36__ {int name; } ;
struct TYPE_35__ {int num_args; int name; TYPE_1__* args; } ;
struct TYPE_34__ {int expr; } ;
struct TYPE_32__ {int ll; } ;
struct TYPE_31__ {TYPE_17__ block; int cond; } ;
struct TYPE_30__ {int pos; } ;
struct TYPE_29__ {TYPE_15__ val; int * type; } ;
struct TYPE_28__ {int kind; int label; int pos; int expr; TYPE_6__ switch_stmt; TYPE_5__ for_stmt; TYPE_4__ while_stmt; TYPE_3__ if_stmt; TYPE_2__ init; TYPE_22__ note; TYPE_17__ block; } ;
typedef int Sym ;
typedef TYPE_7__ SwitchCasePattern ;
typedef TYPE_8__ SwitchCase ;
typedef TYPE_9__ StmtCtx ;
typedef TYPE_10__ Stmt ;
typedef TYPE_11__ Operand ;
typedef TYPE_12__ Expr ;
typedef TYPE_13__ ElseIf ;
 int assert (int ) ;
 int assert_name ;
 int convert_operand (TYPE_11__*,int *) ;
 int define_label (int ,int ) ;
 int fatal_error (int ,char*,...) ;
 int foreign_name ;
 int get_type_name (int *) ;
 int is_cond_operand (int ) ;
 int is_integer_type (int *) ;
 int reference_label (int ,int ) ;
 int resolve_cond_expr (int ) ;
 TYPE_11__ resolve_const_expr (TYPE_12__*) ;
 TYPE_11__ resolve_expected_expr_rvalue (int ,int *) ;
 int resolve_expr (int ) ;
 TYPE_11__ resolve_expr_rvalue (int ) ;
 int resolve_name_operand (int ,int ) ;
 int resolve_static_assert (TYPE_22__) ;
 int resolve_stmt_assign (TYPE_10__*) ;
 int resolve_stmt_block (TYPE_17__,int *,TYPE_9__) ;
 int resolve_stmt_init (TYPE_10__*) ;
 int set_resolved_val (TYPE_12__*,TYPE_15__) ;
 int static_assert_name ;
 int * sym_enter () ;
 int sym_leave (int *) ;
 int * type_llong ;
 int * type_void ;
 int warning (int ,char*,...) ;

bool resolve_stmt(Stmt *stmt, Type *ret_type, StmtCtx ctx) {
    switch (stmt->kind) {
    case 130:
        if (stmt->expr) {
            Operand operand = resolve_expected_expr_rvalue(stmt->expr, ret_type);
            if (!convert_operand(&operand, ret_type)) {
                fatal_error(stmt->pos, "Invalid type in return expression. Expected %s, got %s", get_type_name(ret_type), get_type_name(operand.type));
            }
        } else if (ret_type != type_void) {
            fatal_error(stmt->pos, "Empty return expression for function with non-void return type");
        }
        return 1;
    case 140:
        if (!ctx.is_break_legal) {
            fatal_error(stmt->pos, "Illegal break");
        }
        return 0;
    case 139:
        if (!ctx.is_continue_legal) {
            fatal_error(stmt->pos, "Illegal continue");
        }
        return 0;
    case 141:
        return resolve_stmt_block(stmt->block, ret_type, ctx);
    case 131:
        if (stmt->note.name == assert_name) {
            if (stmt->note.num_args != 1) {
                fatal_error(stmt->pos, "#assert takes 1 argument");
            }
            resolve_cond_expr(stmt->note.args[0].expr);
        } else if (stmt->note.name == static_assert_name) {
            resolve_static_assert(stmt->note);
        } else if (stmt->note.name == foreign_name) {

        } else {
            warning(stmt->pos, "Unknown statement #directive '%s'", stmt->note.name);
        }
        return 0;
    case 134: {
        Sym *scope = sym_enter();
        if (stmt->if_stmt.init) {
            resolve_stmt_init(stmt->if_stmt.init);
        }
        if (stmt->if_stmt.cond) {
            resolve_cond_expr(stmt->if_stmt.cond);
        } else if (!is_cond_operand(resolve_name_operand(stmt->pos, stmt->if_stmt.init->init.name))) {
            fatal_error(stmt->pos, "Conditional expression must have scalar type");
        }
        bool returns = resolve_stmt_block(stmt->if_stmt.then_block, ret_type, ctx);
        for (size_t i = 0; i < stmt->if_stmt.num_elseifs; i++) {
            ElseIf elseif = stmt->if_stmt.elseifs[i];
            resolve_cond_expr(elseif.cond);
            returns = resolve_stmt_block(elseif.block, ret_type, ctx) && returns;
        }
        if (stmt->if_stmt.else_block.stmts) {
            returns = resolve_stmt_block(stmt->if_stmt.else_block, ret_type, ctx) && returns;
        } else {
            returns = 0;
        }
        sym_leave(scope);
        return returns;
    }
    case 128:
    case 138:
        resolve_cond_expr(stmt->while_stmt.cond);
        ctx.is_break_legal = 1;
        ctx.is_continue_legal = 1;
        resolve_stmt_block(stmt->while_stmt.block, ret_type, ctx);
        return 0;
    case 136: {
        Sym *scope = sym_enter();
        if (stmt->for_stmt.init) {
            resolve_stmt(stmt->for_stmt.init, ret_type, ctx);
        }
        if (stmt->for_stmt.cond) {
            resolve_cond_expr(stmt->for_stmt.cond);
        }
        if (stmt->for_stmt.next) {
            resolve_stmt(stmt->for_stmt.next, ret_type, ctx);
        }
        ctx.is_break_legal = 1;
        ctx.is_continue_legal = 1;
        resolve_stmt_block(stmt->for_stmt.block, ret_type, ctx);
        sym_leave(scope);
        return 0;
    }
    case 129: {
        Operand operand = resolve_expr_rvalue(stmt->switch_stmt.expr);
        if (!is_integer_type(operand.type)) {
            fatal_error(stmt->pos, "Switch expression must have integer type");
        }
        ctx.is_break_legal = 1;
        bool returns = 1;
        bool has_default = 0;
        for (size_t i = 0; i < stmt->switch_stmt.num_cases; i++) {
            SwitchCase switch_case = stmt->switch_stmt.cases[i];
            for (size_t j = 0; j < switch_case.num_patterns; j++) {
                SwitchCasePattern pattern = switch_case.patterns[j];
                Expr *start_expr = pattern.start;
                Operand start_operand = resolve_const_expr(start_expr);
                if (!convert_operand(&start_operand, operand.type)) {
                    fatal_error(start_expr->pos, "Invalid type in switch case expression. Expected %s, got %s", get_type_name(operand.type), get_type_name(start_operand.type));
                }
                Expr *end_expr = pattern.end;
                if (end_expr) {
                    Operand end_operand = resolve_const_expr(end_expr);
                    if (!convert_operand(&end_operand, operand.type)) {
                        fatal_error(end_expr->pos, "Invalid type in switch case expression. Expected %s, got %s", get_type_name(operand.type), get_type_name(end_operand.type));
                    }
                    convert_operand(&start_operand, type_llong);
                    set_resolved_val(start_expr, start_operand.val);
                    convert_operand(&end_operand, type_llong);
                    set_resolved_val(end_expr, end_operand.val);
                    if (end_operand.val.ll < start_operand.val.ll) {
                        fatal_error(start_expr->pos, "Case range end value cannot be less thn start value");
                    }
                    if (end_operand.val.ll - start_operand.val.ll >= 256) {
                        fatal_error(start_expr->pos, "Case range cannot span more than 256 values");
                    }
                }
            }
            if (switch_case.is_default) {
                if (has_default) {
                    fatal_error(stmt->pos, "Switch statement has multiple default clauses");
                }
                has_default = 1;
            }
            if (switch_case.block.num_stmts > 1) {
                Stmt *last_stmt = switch_case.block.stmts[switch_case.block.num_stmts - 1];
                if (last_stmt->kind == 140) {
                    warning(last_stmt->pos, "Case blocks already end with an implicit break");
                }
            }
            returns = resolve_stmt_block(switch_case.block, ret_type, ctx) && returns;
        }
        return returns && has_default;
    }
    case 142:
        resolve_stmt_assign(stmt);
        return 0;
    case 133:
        resolve_stmt_init(stmt);
        return 0;
    case 137:
        resolve_expr(stmt->expr);
        return 0;
    case 132:
        define_label(stmt->pos, stmt->label);
        return 0;
    case 135:
        reference_label(stmt->pos, stmt->label);
        return 0;
    default:
        assert(0);
        return 0;
    }
}
