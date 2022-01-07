
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int loff; TYPE_1__* ty; int localvars; int params; int fname; } ;
struct TYPE_5__ {int size; scalar_t__ hasva; int isstatic; } ;
typedef TYPE_2__ Node ;


 int SAVE ;
 int align (int ,int) ;
 int assert (int) ;
 int emit (char*,...) ;
 int emit_noindent (char*,int ) ;
 scalar_t__ emit_regsave_area () ;
 int push (char*) ;
 int push_func_params (int ,int) ;
 int set_reg_nums (int ) ;
 int stackpos ;
 TYPE_2__* vec_get (int ,int) ;
 int vec_len (int ) ;

__attribute__((used)) static void emit_func_prologue(Node *func) {
    SAVE;
    emit(".text");
    if (!func->ty->isstatic)
        emit_noindent(".global %s", func->fname);
    emit_noindent("%s:", func->fname);
    emit("nop");
    push("rbp");
    emit("mov #rsp, #rbp");
    int off = 0;
    if (func->ty->hasva) {
        set_reg_nums(func->params);
        off -= emit_regsave_area();
    }
    push_func_params(func->params, off);
    off -= vec_len(func->params) * 8;

    int localarea = 0;
    for (int i = 0; i < vec_len(func->localvars); i++) {
        Node *v = vec_get(func->localvars, i);
        int size = align(v->ty->size, 8);
        assert(size % 8 == 0);
        off -= size;
        v->loff = off;
        localarea += size;
    }
    if (localarea) {
        emit("sub $%d, #rsp", localarea);
        stackpos += localarea;
    }
}
