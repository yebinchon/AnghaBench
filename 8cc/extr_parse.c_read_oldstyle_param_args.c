
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Map ;


 int errort (int ,char*,int ) ;
 scalar_t__ is_keyword (int ,char) ;
 int is_type (int ) ;
 int * localenv ;
 int * make_vector () ;
 int peek () ;
 int read_decl (int *,int) ;
 int tok2s (int ) ;

__attribute__((used)) static Vector *read_oldstyle_param_args() {
    Map *orig = localenv;
    localenv = ((void*)0);
    Vector *r = make_vector();
    for (;;) {
        if (is_keyword(peek(), '{'))
            break;
        if (!is_type(peek()))
            errort(peek(), "K&R-style declarator expected, but got %s", tok2s(peek()));
        read_decl(r, 0);
    }
    localenv = orig;
    return r;
}
