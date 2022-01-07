
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_1__ ;


struct TYPE_31__ {int kind; int ty; int struc; int newlabel; struct TYPE_31__* operand; } ;
typedef TYPE_1__ Node ;
 int SAVE ;
 int emit_addr (TYPE_1__*) ;
 int emit_assign (TYPE_1__*) ;
 int emit_binop (TYPE_1__*) ;
 int emit_bitand (TYPE_1__*) ;
 int emit_bitnot (TYPE_1__*) ;
 int emit_bitor (TYPE_1__*) ;
 int emit_cast (TYPE_1__*) ;
 int emit_comma (TYPE_1__*) ;
 int emit_compound_stmt (TYPE_1__*) ;
 int emit_computed_goto (TYPE_1__*) ;
 int emit_conv (TYPE_1__*) ;
 int emit_decl (TYPE_1__*) ;
 int emit_deref (TYPE_1__*) ;
 int emit_func_call (TYPE_1__*) ;
 int emit_goto (TYPE_1__*) ;
 int emit_gvar (TYPE_1__*) ;
 int emit_label (int ) ;
 int emit_label_addr (TYPE_1__*) ;
 int emit_literal (TYPE_1__*) ;
 int emit_load_struct_ref (int ,int ,int ) ;
 int emit_logand (TYPE_1__*) ;
 int emit_lognot (TYPE_1__*) ;
 int emit_logor (TYPE_1__*) ;
 int emit_lvar (TYPE_1__*) ;
 int emit_post_inc_dec (TYPE_1__*,char*) ;
 int emit_pre_inc_dec (TYPE_1__*,char*) ;
 int emit_return (TYPE_1__*) ;
 int emit_ternary (TYPE_1__*) ;
 int maybe_emit_builtin (TYPE_1__*) ;
 int maybe_print_source_loc (TYPE_1__*) ;

__attribute__((used)) static void emit_expr(Node *node) {
    SAVE;
    maybe_print_source_loc(node);
    switch (node->kind) {
    case 140: emit_literal(node); return;
    case 139: emit_lvar(node); return;
    case 143: emit_gvar(node); return;
    case 146: emit_addr(node); return;
    case 147:
        if (maybe_emit_builtin(node))
            return;

    case 145:
        emit_func_call(node);
        return;
    case 149: emit_decl(node); return;
    case 150: emit_conv(node); return;
    case 153: emit_addr(node->operand); return;
    case 148: emit_deref(node); return;
    case 142:
    case 136:
        emit_ternary(node);
        return;
    case 144: emit_goto(node); return;
    case 141:
        if (node->newlabel)
            emit_label(node->newlabel);
        return;
    case 138: emit_return(node); return;
    case 152: emit_compound_stmt(node); return;
    case 137:
        emit_load_struct_ref(node->struc, node->ty, 0);
        return;
    case 128: emit_pre_inc_dec(node, "add"); return;
    case 129: emit_pre_inc_dec(node, "sub"); return;
    case 130: emit_post_inc_dec(node, "add"); return;
    case 131: emit_post_inc_dec(node, "sub"); return;
    case '!': emit_lognot(node); return;
    case '&': emit_bitand(node); return;
    case '|': emit_bitor(node); return;
    case '~': emit_bitnot(node); return;
    case 133: emit_logand(node); return;
    case 132: emit_logor(node); return;
    case 135: emit_cast(node); return;
    case ',': emit_comma(node); return;
    case '=': emit_assign(node); return;
    case 134: emit_label_addr(node); return;
    case 151: emit_computed_goto(node); return;
    default:
        emit_binop(node);
    }
}
