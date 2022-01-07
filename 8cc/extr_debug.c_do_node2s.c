
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int kind; } ;
struct TYPE_10__ {int kind; char ival; char* fname; struct TYPE_10__* right; struct TYPE_10__* left; int label; struct TYPE_10__* operand; TYPE_5__* ty; int field; struct TYPE_10__* struc; int stmts; struct TYPE_10__* retval; struct TYPE_10__* els; struct TYPE_10__* then; struct TYPE_10__* cond; TYPE_5__* totype; int initoff; struct TYPE_10__* initval; int declinit; TYPE_1__* declvar; struct TYPE_10__* body; int params; int args; int varname; int lvarinit; int sval; int fval; } ;
struct TYPE_9__ {char* varname; TYPE_5__* ty; } ;
typedef TYPE_2__ Node ;
typedef int Buffer ;
 int const OP_EQ ;
 int a2s_declinit (int *,int ) ;
 int binop_to_string (int *,char*,TYPE_2__*) ;
 int buf_printf (int *,char*,...) ;
 int error (char*) ;
 char* node2s (TYPE_2__*) ;
 int quote_cstring (int ) ;
 char* ty2s (TYPE_5__*) ;
 int uop_to_string (int *,char*,TYPE_2__*) ;
 TYPE_2__* vec_get (int ,int) ;
 int vec_len (int ) ;

__attribute__((used)) static void do_node2s(Buffer *b, Node *node) {
    if (!node) {
        buf_printf(b, "(nil)");
        return;
    }
    switch (node->kind) {
    case 165:
        switch (node->ty->kind) {
        case 159:
            if (node->ival == '\n') buf_printf(b, "'\n'");
            else if (node->ival == '\\') buf_printf(b, "'\\\\'");
            else if (node->ival == '\0') buf_printf(b, "'\\0'");
            else buf_printf(b, "'%c'", node->ival);
            break;
        case 156:
            buf_printf(b, "%d", node->ival);
            break;
        case 153:
            buf_printf(b, "%ldL", node->ival);
            break;
        case 154:
            buf_printf(b, "%lldL", node->ival);
            break;
        case 157:
        case 158:
        case 155:
            buf_printf(b, "%f", node->fval);
            break;
        case 160:
            buf_printf(b, "\"%s\"", quote_cstring(node->sval));
            break;
        default:
            error("internal error");
        }
        break;
    case 166:
        buf_printf(b, "%s:", node->label);
        break;
    case 164:
        buf_printf(b, "lv=%s", node->varname);
        if (node->lvarinit) {
            buf_printf(b, "(");
            a2s_declinit(b, node->lvarinit);
            buf_printf(b, ")");
        }
        break;
    case 169:
        buf_printf(b, "gv=%s", node->varname);
        break;
    case 173:
    case 171: {
        buf_printf(b, "(%s)%s(", ty2s(node->ty),
                   node->kind == 173 ? node->fname : node2s(node));
        for (int i = 0; i < vec_len(node->args); i++) {
            if (i > 0)
                buf_printf(b, ",");
            buf_printf(b, "%s", node2s(vec_get(node->args, i)));
        }
        buf_printf(b, ")");
        break;
    }
    case 172: {
        buf_printf(b, "(funcdesg %s)", node->fname);
        break;
    }
    case 174: {
        buf_printf(b, "(%s)%s(", ty2s(node->ty), node->fname);
        for (int i = 0; i < vec_len(node->params); i++) {
            if (i > 0)
                buf_printf(b, ",");
            Node *param = vec_get(node->params, i);
            buf_printf(b, "%s %s", ty2s(param->ty), node2s(param));
        }
        buf_printf(b, ")");
        do_node2s(b, node->body);
        break;
    }
    case 170:
        buf_printf(b, "goto(%s)", node->label);
        break;
    case 176:
        buf_printf(b, "(decl %s %s",
                   ty2s(node->declvar->ty),
                   node->declvar->varname);
        if (node->declinit) {
            buf_printf(b, " ");
            a2s_declinit(b, node->declinit);
        }
        buf_printf(b, ")");
        break;
    case 167:
        buf_printf(b, "%s@%d", node2s(node->initval), node->initoff, ty2s(node->totype));
        break;
    case 177:
        buf_printf(b, "(conv %s=>%s)", node2s(node->operand), ty2s(node->ty));
        break;
    case 168:
        buf_printf(b, "(if %s %s",
                   node2s(node->cond),
                   node2s(node->then));
        if (node->els)
            buf_printf(b, " %s", node2s(node->els));
        buf_printf(b, ")");
        break;
    case 161:
        buf_printf(b, "(? %s %s %s)",
                   node2s(node->cond),
                   node2s(node->then),
                   node2s(node->els));
        break;
    case 163:
        buf_printf(b, "(return %s)", node2s(node->retval));
        break;
    case 178: {
        buf_printf(b, "{");
        for (int i = 0; i < vec_len(node->stmts); i++) {
            do_node2s(b, vec_get(node->stmts, i));
            buf_printf(b, ";");
        }
        buf_printf(b, "}");
        break;
    }
    case 162:
        do_node2s(b, node->struc);
        buf_printf(b, ".");
        buf_printf(b, node->field);
        break;
    case 179: uop_to_string(b, "addr", node); break;
    case 175: uop_to_string(b, "deref", node); break;
    case 130: binop_to_string(b, "<<", node); break;
    case 129:
    case 128: binop_to_string(b, ">>", node); break;
    case 140: binop_to_string(b, ">=", node); break;
    case 138: binop_to_string(b, "<=", node); break;
    case 135: binop_to_string(b, "!=", node); break;
    case 131: uop_to_string(b, "pre++", node); break;
    case 132: uop_to_string(b, "pre--", node); break;
    case 133: uop_to_string(b, "post++", node); break;
    case 134: uop_to_string(b, "post--", node); break;
    case 137: binop_to_string(b, "and", node); break;
    case 136: binop_to_string(b, "or", node); break;
    case 152: binop_to_string(b, "+=", node); break;
    case 143: binop_to_string(b, "-=", node); break;
    case 148: binop_to_string(b, "*=", node); break;
    case 150: binop_to_string(b, "/=", node); break;
    case 149: binop_to_string(b, "%=", node); break;
    case 151: binop_to_string(b, "&=", node); break;
    case 147: binop_to_string(b, "|=", node); break;
    case 142: binop_to_string(b, "^=", node); break;
    case 146: binop_to_string(b, "<<=", node); break;
    case 145:
    case 144: binop_to_string(b, ">>=", node); break;
    case '!': uop_to_string(b, "!", node); break;
    case '&': binop_to_string(b, "&", node); break;
    case '|': binop_to_string(b, "|", node); break;
    case 141: {
        buf_printf(b, "((%s)=>(%s) %s)",
                   ty2s(node->operand->ty),
                   ty2s(node->ty),
                   node2s(node->operand));
        break;
    }
    case 139:
        buf_printf(b, "&&%s", node->label);
        break;
    default: {
        char *left = node2s(node->left);
        char *right = node2s(node->right);
        if (node->kind == OP_EQ)
            buf_printf(b, "(== ");
        else
            buf_printf(b, "(%c ", node->kind);
        buf_printf(b, "%s %s)", left, right);
    }
    }
}
