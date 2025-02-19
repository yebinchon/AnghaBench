
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_7__ {scalar_t__ hasva; } ;
typedef TYPE_2__ Type ;
struct TYPE_9__ {TYPE_1__* ty; } ;
struct TYPE_8__ {scalar_t__ kind; int ty; int fname; TYPE_5__* fptr; int args; TYPE_2__* ftype; } ;
struct TYPE_6__ {TYPE_2__* ptr; } ;
typedef TYPE_3__ Node ;


 scalar_t__ AST_FUNCPTR_CALL ;
 int SAVE ;
 int assert (int) ;
 int classify_args (int *,int *,int *,int ) ;
 int emit (char*,...) ;
 int emit_args (int *) ;
 int emit_expr (TYPE_5__*) ;
 int * make_vector () ;
 int maybe_booleanize_retval (int ) ;
 int pop (char*) ;
 int pop_float_args (int ) ;
 int pop_int_args (int ) ;
 int push (char*) ;
 int restore_arg_regs (int ,int ) ;
 int save_arg_regs (int ,int ) ;
 int stackpos ;
 int vec_len (int *) ;
 int * vec_reverse (int *) ;

__attribute__((used)) static void emit_func_call(Node *node) {
    SAVE;
    int opos = stackpos;
    bool isptr = (node->kind == AST_FUNCPTR_CALL);
    Type *ftype = isptr ? node->fptr->ty->ptr : node->ftype;

    Vector *ints = make_vector();
    Vector *floats = make_vector();
    Vector *rest = make_vector();
    classify_args(ints, floats, rest, node->args);
    save_arg_regs(vec_len(ints), vec_len(floats));

    bool padding = stackpos % 16;
    if (padding) {
        emit("sub $8, #rsp");
        stackpos += 8;
    }

    int restsize = emit_args(vec_reverse(rest));
    if (isptr) {
        emit_expr(node->fptr);
        push("rax");
    }
    emit_args(ints);
    emit_args(floats);
    pop_float_args(vec_len(floats));
    pop_int_args(vec_len(ints));

    if (isptr) pop("r11");
    if (ftype->hasva)
        emit("mov $%u, #eax", vec_len(floats));

    if (isptr)
        emit("call *#r11");
    else
        emit("call %s", node->fname);
    maybe_booleanize_retval(node->ty);
    if (restsize > 0) {
        emit("add $%d, #rsp", restsize);
        stackpos -= restsize;
    }
    if (padding) {
        emit("add $8, #rsp");
        stackpos -= 8;
    }
    restore_arg_regs(vec_len(ints), vec_len(floats));
    assert(opos == stackpos);
}
