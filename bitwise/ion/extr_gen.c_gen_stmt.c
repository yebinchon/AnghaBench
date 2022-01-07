
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_21__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_15__ ;
typedef struct TYPE_29__ TYPE_14__ ;
typedef struct TYPE_28__ TYPE_13__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct TYPE_39__ {long long ll; } ;
typedef TYPE_8__ Val ;
struct TYPE_40__ {TYPE_14__* start; TYPE_14__* end; } ;
struct TYPE_32__ {int stmts; } ;
struct TYPE_38__ {TYPE_21__ block; TYPE_12__* next; TYPE_14__* cond; TYPE_12__* init; } ;
struct TYPE_37__ {TYPE_14__* cond; TYPE_21__ block; } ;
struct TYPE_36__ {size_t num_elseifs; TYPE_12__* init; TYPE_21__ else_block; TYPE_15__* elseifs; TYPE_21__ then_block; TYPE_14__* cond; } ;
struct TYPE_35__ {int name; } ;
struct TYPE_34__ {char* name; int pos; TYPE_14__* expr; } ;
struct TYPE_33__ {char* val; } ;
struct TYPE_31__ {size_t num_cases; TYPE_10__* cases; TYPE_14__* expr; } ;
struct TYPE_30__ {TYPE_21__ block; TYPE_14__* cond; } ;
struct TYPE_29__ {TYPE_2__ str_lit; int pos; int kind; } ;
struct TYPE_28__ {int num_args; int pos; TYPE_3__* args; int name; } ;
struct TYPE_27__ {int kind; int label; TYPE_1__ switch_stmt; TYPE_7__ for_stmt; TYPE_6__ while_stmt; TYPE_5__ if_stmt; TYPE_4__ init; int pos; TYPE_13__ note; TYPE_21__ block; TYPE_14__* expr; } ;
struct TYPE_26__ {size_t num_stmts; TYPE_12__** stmts; } ;
struct TYPE_25__ {size_t num_patterns; TYPE_11__ block; int is_default; TYPE_9__* patterns; } ;
typedef TYPE_9__ SwitchCasePattern ;
typedef TYPE_10__ SwitchCase ;
typedef TYPE_11__ StmtList ;
typedef TYPE_12__ Stmt ;
typedef TYPE_13__ Note ;
typedef TYPE_14__ Expr ;
typedef TYPE_15__ ElseIf ;


 int EXPR_STR ;
 int assert (int) ;
 int assert_name ;
 int buf_printf (int ,char*,char const*) ;
 int complete_name ;
 int fatal_error (int ,char*) ;
 int foreign_name ;
 int gen_buf_pos (int *,int ) ;
 int gen_char (int) ;
 int gen_expr (TYPE_14__*) ;
 int gen_indent ;
 int gen_postamble_buf ;
 int gen_preamble_buf ;
 int gen_simple_stmt (TYPE_12__*) ;
 int gen_stmt_block (TYPE_21__) ;
 int gen_sync_pos (int ) ;
 int genf (char*,...) ;
 int genln () ;
 int genlnf (char*,...) ;
 TYPE_8__ get_resolved_val (TYPE_14__*) ;
 TYPE_13__* get_stmt_note (TYPE_12__*,int ) ;
 int is_char_lit (TYPE_14__*) ;
 char* str_intern (char*) ;

void gen_stmt(Stmt *stmt) {
    gen_sync_pos(stmt->pos);
    switch (stmt->kind) {
    case 130:
        genlnf("return");
        if (stmt->expr) {
            genf(" ");
            gen_expr(stmt->expr);
        }
        genf(";");
        break;
    case 138:
        genlnf("break;");
        break;
    case 137:
        genlnf("continue;");
        break;
    case 139:
        genln();
        gen_stmt_block(stmt->block);
        break;
    case 131: {
        Note note = stmt->note;
        if (note.name == assert_name) {
            genlnf("assert(");
            assert(note.num_args == 1);
            gen_expr(note.args[0].expr);
            genf(");");
        } else if (note.name == foreign_name) {
            const char *preamble_name = str_intern("preamble");
            const char *postamble_name = str_intern("postamble");
            for (size_t i = 0; i < note.num_args; i++) {
                const char *name = note.args[i].name;
                Expr *expr = note.args[i].expr;
                if (expr->kind != EXPR_STR) {
                    fatal_error(expr->pos, "#foreign argument must be a string");
                }
                const char *str = expr->str_lit.val;
                if (name == preamble_name) {
                    gen_buf_pos(&gen_preamble_buf, note.args[i].pos);
                    buf_printf(gen_preamble_buf, "%s\n", str);
                } else if (name == postamble_name) {
                    gen_buf_pos(&gen_postamble_buf, note.args[i].pos);
                    buf_printf(gen_postamble_buf, "%s\n", str);
                }
            }
        }
        break;
    }
    case 133:
        if (stmt->if_stmt.init) {
            genlnf("{");
            gen_indent++;
            gen_stmt(stmt->if_stmt.init);
        }
        gen_sync_pos(stmt->pos);
        genlnf("if (");
        if (stmt->if_stmt.cond) {
            gen_expr(stmt->if_stmt.cond);
        } else {
            genf("%s", stmt->if_stmt.init->init.name);
        }
        genf(") ");
        gen_stmt_block(stmt->if_stmt.then_block);
        for (size_t i = 0; i < stmt->if_stmt.num_elseifs; i++) {
            ElseIf elseif = stmt->if_stmt.elseifs[i];
            genf(" else if (");
            gen_expr(elseif.cond);
            genf(") ");
            gen_stmt_block(elseif.block);
        }
        if (stmt->if_stmt.else_block.stmts) {
            genf(" else ");
            gen_stmt_block(stmt->if_stmt.else_block);
        } else {
            Note *complete_note = get_stmt_note(stmt, complete_name);
            if (complete_note) {
                genf(" else {");
                gen_indent++;
                gen_sync_pos(complete_note->pos);
                genlnf("assert(\"@complete if/elseif chain failed to handle case\" && 0);");
                gen_indent--;
                genlnf("}");
            }
        }
        if (stmt->if_stmt.init) {
            gen_indent--;
            genlnf("}");
        }
        break;
    case 128:
        genlnf("while (");
        gen_expr(stmt->while_stmt.cond);
        genf(") ");
        gen_stmt_block(stmt->while_stmt.block);
        break;
    case 136:
        genlnf("do ");
        gen_stmt_block(stmt->while_stmt.block);
        genf(" while (");
        gen_expr(stmt->while_stmt.cond);
        genf(");");
        break;
    case 135:
        genlnf("for (");
        if (stmt->for_stmt.init) {
            gen_simple_stmt(stmt->for_stmt.init);
        }
        genf(";");
        if (stmt->for_stmt.cond) {
            genf(" ");
            gen_expr(stmt->for_stmt.cond);
        }
        genf(";");
        if (stmt->for_stmt.next) {
            genf(" ");
            gen_simple_stmt(stmt->for_stmt.next);
        }
        genf(") ");
        gen_stmt_block(stmt->for_stmt.block);
        break;
    case 129: {
        genlnf("switch (");
        gen_expr(stmt->switch_stmt.expr);
        genf(") {");
        bool has_default = 0;
        for (size_t i = 0; i < stmt->switch_stmt.num_cases; i++) {
            SwitchCase switch_case = stmt->switch_stmt.cases[i];
            for (size_t j = 0; j < switch_case.num_patterns; j++) {
                SwitchCasePattern pattern = switch_case.patterns[j];
                if (pattern.end) {
                    Val start_val = get_resolved_val(pattern.start);
                    Val end_val = get_resolved_val(pattern.end);
                    if (is_char_lit(pattern.start) && is_char_lit(pattern.end)) {
                        genln();
                        for (int c = (int)start_val.ll; c <= (int)end_val.ll; c++) {
                            genf("case ");
                            gen_char(c);
                            genf(": ");
                        }
                    } else {
                        genlnf("// ");
                        gen_expr(pattern.start);
                        genf("...");
                        gen_expr(pattern.end);
                        genln();
                        for (long long ll = start_val.ll; ll <= end_val.ll; ll++) {
                            genf("case %lld: ", ll);
                        }
                    }
                } else {
                    genlnf("case ");
                    gen_expr(pattern.start);
                    genf(":");
                }
            }
            if (switch_case.is_default) {
                has_default = 1;
                genlnf("default:");
            }
            genf(" ");
            genf("{");
            gen_indent++;
            StmtList block = switch_case.block;
            for (size_t j = 0; j < block.num_stmts; j++) {
                gen_stmt(block.stmts[j]);
            }
            genlnf("break;");
            gen_indent--;
            genlnf("}");
        }
        if (!has_default) {
            Note *note = get_stmt_note(stmt, complete_name);
            if (note) {
                genlnf("default:");
                gen_indent++;
                genlnf("assert(\"@complete switch failed to handle case\" && 0);");
                genlnf("break;");
                gen_indent--;
            }
        }
        genlnf("}");
        break;
    }
    case 132:
        genlnf("%s: ;", stmt->label);
        break;
    case 134:
        genlnf("goto %s;", stmt->label);
        break;
    default:
        genln();
        gen_simple_stmt(stmt);
        genf(";");
        break;
    }
}
