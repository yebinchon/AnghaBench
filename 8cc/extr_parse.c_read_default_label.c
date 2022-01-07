
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;
typedef int Node ;


 int ast_dest (scalar_t__) ;
 scalar_t__ defaultcase ;
 int errort (int *,char*) ;
 int expect (char) ;
 scalar_t__ make_label () ;
 int * read_label_tail (int ) ;

__attribute__((used)) static Node *read_default_label(Token *tok) {
    expect(':');
    if (defaultcase)
        errort(tok, "duplicate default");
    defaultcase = make_label();
    return read_label_tail(ast_dest(defaultcase));
}
