
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* label; scalar_t__ kind; scalar_t__ newlabel; } ;
typedef TYPE_1__ Node ;


 scalar_t__ AST_GOTO ;
 int error (char*,char*,char*) ;
 int gotos ;
 int labels ;
 scalar_t__ make_label () ;
 TYPE_1__* map_get (int ,char*) ;
 TYPE_1__* vec_get (int ,int) ;
 int vec_len (int ) ;

__attribute__((used)) static void backfill_labels() {
    for (int i = 0; i < vec_len(gotos); i++) {
        Node *src = vec_get(gotos, i);
        char *label = src->label;
        Node *dst = map_get(labels, label);
        if (!dst)
            error("stray %s: %s", src->kind == AST_GOTO ? "goto" : "unary &&", label);
        if (dst->newlabel)
            src->newlabel = dst->newlabel;
        else
            src->newlabel = dst->newlabel = make_label();
    }
}
