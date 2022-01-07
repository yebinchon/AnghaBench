
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_61__ TYPE_9__ ;
typedef struct TYPE_60__ TYPE_8__ ;
typedef struct TYPE_59__ TYPE_7__ ;
typedef struct TYPE_58__ TYPE_6__ ;
typedef struct TYPE_57__ TYPE_5__ ;
typedef struct TYPE_56__ TYPE_4__ ;
typedef struct TYPE_55__ TYPE_3__ ;
typedef struct TYPE_54__ TYPE_2__ ;
typedef struct TYPE_53__ TYPE_29__ ;
typedef struct TYPE_52__ TYPE_1__ ;
typedef struct TYPE_51__ TYPE_18__ ;
typedef struct TYPE_50__ TYPE_17__ ;
typedef struct TYPE_49__ TYPE_16__ ;
typedef struct TYPE_48__ TYPE_15__ ;
typedef struct TYPE_47__ TYPE_14__ ;
typedef struct TYPE_46__ TYPE_13__ ;
typedef struct TYPE_45__ TYPE_12__ ;
typedef struct TYPE_44__ TYPE_11__ ;
typedef struct TYPE_43__ TYPE_10__ ;


struct TYPE_44__ {TYPE_10__* fields; } ;
struct TYPE_49__ {int typeid; int kind; TYPE_11__ aggregate; } ;
typedef TYPE_16__ Type ;
struct TYPE_61__ {size_t num_args; TYPE_18__** args; TYPE_18__* expr; } ;
struct TYPE_60__ {TYPE_18__* expr; int type; } ;
struct TYPE_59__ {int mod; int val; } ;
struct TYPE_58__ {size_t end; size_t start; int suffix; } ;
struct TYPE_57__ {size_t suffix; scalar_t__ val; int mod; } ;
struct TYPE_56__ {TYPE_18__* expr; } ;
struct TYPE_55__ {int op; int post; int expr; } ;
struct TYPE_54__ {int name; int type; } ;
struct TYPE_53__ {long long ll; } ;
struct TYPE_52__ {TYPE_18__* else_expr; TYPE_18__* then_expr; TYPE_18__* cond; } ;
struct TYPE_48__ {TYPE_18__* right; int op; TYPE_18__* left; } ;
struct TYPE_47__ {TYPE_18__* expr; int op; } ;
struct TYPE_46__ {char* name; TYPE_18__* expr; } ;
struct TYPE_45__ {TYPE_18__* index; TYPE_18__* expr; } ;
struct TYPE_51__ {int kind; TYPE_3__ modify; TYPE_2__ offsetof_field; struct TYPE_51__* typeof_type; struct TYPE_51__* typeof_expr; int alignof_type; struct TYPE_51__* alignof_expr; int sizeof_type; struct TYPE_51__* sizeof_expr; TYPE_1__ ternary; TYPE_15__ binary; TYPE_14__ unary; TYPE_13__ field; TYPE_12__ index; TYPE_9__ call; TYPE_8__ cast; int name; TYPE_7__ str_lit; TYPE_6__ float_lit; TYPE_5__ int_lit; TYPE_4__ paren; } ;
struct TYPE_50__ {int kind; } ;
struct TYPE_43__ {int name; } ;
typedef TYPE_17__ Sym ;
typedef TYPE_18__ Expr ;
 int MOD_MULTILINE ;

 int SUFFIX_D ;
 int SYM_TYPE ;
 int TYPE_PTR ;
 int assert (int ) ;
 int gen_char (char) ;
 int gen_expr_compound (TYPE_18__*) ;
 int gen_expr_new (TYPE_18__*) ;
 int gen_intrinsic (TYPE_17__*,TYPE_18__*) ;
 int gen_paren_expr (int ) ;
 int gen_str (int ,int) ;
 int gen_typeid (TYPE_16__*) ;
 int genf (char*,...) ;
 int get_gen_name (TYPE_17__*) ;
 int get_gen_name_or_default (TYPE_18__*,int ) ;
 TYPE_17__* get_resolved_sym (TYPE_18__*) ;
 TYPE_16__* get_resolved_type (TYPE_18__*) ;
 TYPE_29__ get_resolved_val (TYPE_18__*) ;
 int is_aggregate_type (TYPE_16__*) ;
 int is_implicit_any (TYPE_18__*) ;
 int is_intrinsic (TYPE_17__*) ;
 TYPE_16__* pointer_promo_type (TYPE_18__*) ;
 int token_kind_name (int ) ;
 char** token_suffix_names ;
 TYPE_16__* type_conv (TYPE_18__*) ;
 int type_to_cdecl (TYPE_16__*,char*) ;
 int typespec_to_cdecl (int ,char*) ;
 TYPE_16__* unqualify_type (TYPE_16__*) ;

void gen_expr(Expr *expr) {
    Type *type = ((void*)0);
    Type *conv = type_conv(expr);
    if (conv) {
        genf("(%s)(", type_to_cdecl(conv, ""));
    }
    bool gen_any = is_implicit_any(expr);
    if (gen_any) {
        type = get_resolved_type(expr);
        genf("(any){(%s[]){", type_to_cdecl(type, ""));
    }
    switch (expr->kind) {
    case 139:
        genf("(");
        gen_expr(expr->paren.expr);
        genf(")");
        break;
    case 144: {
        const char *suffix_name = token_suffix_names[expr->int_lit.suffix];
        switch (expr->int_lit.mod) {
        case 131:
        case 129:
            genf("0x%llx%s", expr->int_lit.val, suffix_name);
            break;
        case 128:
            genf("0%llo%s", expr->int_lit.val, suffix_name);
            break;
        case 130:
            gen_char((char)expr->int_lit.val);
            break;
        default:
            genf("%llu%s", expr->int_lit.val, suffix_name);
            break;
        }
        break;
    }
    case 146: {
        bool is_double = expr->float_lit.suffix == SUFFIX_D;
        size_t len = expr->float_lit.end - expr->float_lit.start;
        genf("%.*s%s", is_double ? len-1 : len, expr->float_lit.start, is_double ? "" : "f");
        break;
    }
    case 136:
        gen_str(expr->str_lit.val, expr->str_lit.mod == MOD_MULTILINE);
        break;
    case 142:
        genf("%s", get_gen_name_or_default(expr, expr->name));
        break;
    case 149:
        genf("(%s)(", typespec_to_cdecl(expr->cast.type, ""));
        gen_expr(expr->cast.expr);
        genf(")");
        break;
    case 150: {
        Sym *sym = get_resolved_sym(expr->call.expr);
        if (is_intrinsic(sym)) {
            gen_intrinsic(sym, expr);
        } else {
            if (sym && sym->kind == SYM_TYPE) {
                genf("(%s)", get_gen_name(sym));
            } else {
                gen_expr(expr->call.expr);
            }
            genf("(");
            for (size_t i = 0; i < expr->call.num_args; i++) {
                if (i != 0) {
                    genf(", ");
                }
                gen_expr(expr->call.args[i]);
            }
            genf(")");
        }
        break;
    }
    case 145: {
        Type *type = unqualify_type(get_resolved_type(expr->index.expr));
        if (is_aggregate_type(type)) {
            gen_expr(expr->index.expr);
            genf(".");
            long long i = get_resolved_val(expr->index.index).ll;
            genf("%s", type->aggregate.fields[i].name);
        } else {
            gen_expr(expr->index.expr);
            genf("[");
            gen_expr(expr->index.index);
            genf("]");
        }
        break;
    }
    case 147: {
        Sym *sym = get_resolved_sym(expr);
        if (sym) {
            genf("(%s)", get_gen_name(sym));
        } else {
            gen_expr(expr->field.expr);
            Type *type = unqualify_type(get_resolved_type(expr->field.expr));
            const char *name = expr->field.name;
            genf("%s%s", type->kind == TYPE_PTR ? "->" : ".", name);
        }
        break;
    }
    case 148:
        gen_expr_compound(expr);
        break;
    case 132:
        genf("%s(", token_kind_name(expr->unary.op));
        gen_expr(expr->unary.expr);
        genf(")");
        break;
    case 151: {
        genf("(");
        Type *left_promo = pointer_promo_type(expr->binary.left);
        if (left_promo) {
            genf("(%s)", type_to_cdecl(left_promo, ""));
        }
        gen_expr(expr->binary.left);
        genf(") %s (", token_kind_name(expr->binary.op));
        Type *right_promo = pointer_promo_type(expr->binary.right);
        if (right_promo) {
            genf("(%s)", type_to_cdecl(right_promo, ""));
        }
        gen_expr(expr->binary.right);
        genf(")");
        break;
    }
    case 135:
        genf("(");
        gen_expr(expr->ternary.cond);
        genf(" ? ");
        gen_expr(expr->ternary.then_expr);
        genf(" : ");
        gen_expr(expr->ternary.else_expr);
        genf(")");
        break;
    case 138:
        genf("sizeof(");
        gen_expr(expr->sizeof_expr);
        genf(")");
        break;
    case 137:
        genf("sizeof(%s)", typespec_to_cdecl(expr->sizeof_type, ""));
        break;
    case 153:
        genf("alignof(%s)", type_to_cdecl(get_resolved_type(expr->alignof_expr), ""));
        break;
    case 152:
        genf("alignof(%s)", typespec_to_cdecl(expr->alignof_type, ""));
        break;
    case 134: {
        Type *type = get_resolved_type(expr->typeof_expr);
        assert(type->typeid);
        gen_typeid(type);
        break;
    }
    case 133: {
        Type *type = get_resolved_type(expr->typeof_type);
        assert(type->typeid);
        gen_typeid(type);
        break;
    }
    case 140:
        genf("offsetof(%s, %s)", typespec_to_cdecl(expr->offsetof_field.type, ""), expr->offsetof_field.name);
        break;
    case 143:
        if (!expr->modify.post) {
            genf("%s", token_kind_name(expr->modify.op));
        }
        gen_paren_expr(expr->modify.expr);
        if (expr->modify.post) {
            genf("%s", token_kind_name(expr->modify.op));
        }
        break;
    case 141:
        gen_expr_new(expr);
        break;
    default:
        assert(0);
    }
    if (gen_any) {
        genf("}, ");
        gen_typeid(type);
        genf("}");
    }
    if (conv) {
        genf(")");
    }
}
