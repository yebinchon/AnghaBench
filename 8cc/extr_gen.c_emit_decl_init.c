
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_9__ {scalar_t__ bitsize; } ;
struct TYPE_8__ {scalar_t__ kind; } ;
struct TYPE_7__ {scalar_t__ kind; scalar_t__ initoff; TYPE_4__* totype; TYPE_3__* initval; } ;
typedef TYPE_1__ Node ;


 scalar_t__ AST_INIT ;
 scalar_t__ AST_LITERAL ;
 int assert (int) ;
 int emit_expr (TYPE_3__*) ;
 int emit_fill_holes (int *,int,int) ;
 int emit_lsave (TYPE_4__*,scalar_t__) ;
 int emit_save_literal (TYPE_3__*,TYPE_4__*,scalar_t__) ;
 TYPE_1__* vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static void emit_decl_init(Vector *inits, int off, int totalsize) {
    emit_fill_holes(inits, off, totalsize);
    for (int i = 0; i < vec_len(inits); i++) {
        Node *node = vec_get(inits, i);
        assert(node->kind == AST_INIT);
        bool isbitfield = (node->totype->bitsize > 0);
        if (node->initval->kind == AST_LITERAL && !isbitfield) {
            emit_save_literal(node->initval, node->totype, node->initoff + off);
        } else {
            emit_expr(node->initval);
            emit_lsave(node->totype, node->initoff + off);
        }
    }
}
