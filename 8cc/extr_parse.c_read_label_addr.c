
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; int sval; } ;
typedef TYPE_1__ Token ;
typedef int Node ;


 scalar_t__ TIDENT ;
 int * ast_label_addr (int ) ;
 int errort (TYPE_1__*,char*,int ) ;
 TYPE_1__* get () ;
 int gotos ;
 int tok2s (TYPE_1__*) ;
 int vec_push (int ,int *) ;

__attribute__((used)) static Node *read_label_addr(Token *tok) {


    Token *tok2 = get();
    if (tok2->kind != TIDENT)
        errort(tok, "label name expected after &&, but got %s", tok2s(tok2));
    Node *r = ast_label_addr(tok2->sval);
    vec_push(gotos, r);
    return r;
}
