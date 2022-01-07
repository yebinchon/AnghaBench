
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* sval; } ;
typedef TYPE_1__ Token ;
typedef int Node ;


 int * ast_label (char*) ;
 int errort (TYPE_1__*,char*,int ) ;
 int labels ;
 scalar_t__ map_get (int ,char*) ;
 int map_put (int ,char*,int *) ;
 int * read_label_tail (int *) ;
 int tok2s (TYPE_1__*) ;

__attribute__((used)) static Node *read_label(Token *tok) {
    char *label = tok->sval;
    if (map_get(labels, label))
        errort(tok, "duplicate label: %s", tok2s(tok));
    Node *r = ast_label(label);
    map_put(labels, label, r);
    return read_label_tail(r);
}
