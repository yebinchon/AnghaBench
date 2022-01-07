
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;
typedef int Node ;


 int expect (char) ;
 int get () ;
 int maybe_skip_comma () ;
 scalar_t__ next_token (char) ;
 int node2s (int *) ;
 int * peek () ;
 int * read_assignment_expr () ;
 int warnt (int *,char*,int ) ;

__attribute__((used)) static void skip_to_brace() {
    for (;;) {
        if (next_token('}'))
            return;
        if (next_token('.')) {
            get();
            expect('=');
        }
        Token *tok = peek();
        Node *ignore = read_assignment_expr();
        if (!ignore)
            return;
        warnt(tok, "excessive initializer: %s", node2s(ignore));
        maybe_skip_comma();
    }
}
