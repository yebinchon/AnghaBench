
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Node ;
typedef int Map ;


 int * ast_compound_stmt (int *) ;
 int * localenv ;
 int * make_map_parent (int *) ;
 int * make_vector () ;
 scalar_t__ next_token (char) ;
 int read_decl_or_stmt (int *) ;

__attribute__((used)) static Node *read_compound_stmt() {
    Map *orig = localenv;
    localenv = make_map_parent(localenv);
    Vector *list = make_vector();
    for (;;) {
        if (next_token('}'))
            break;
        read_decl_or_stmt(list);
    }
    localenv = orig;
    return ast_compound_stmt(list);
}
