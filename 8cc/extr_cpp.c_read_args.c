
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vector ;
typedef int Token ;
struct TYPE_4__ {scalar_t__ nargs; } ;
typedef TYPE_1__ Macro ;


 int * do_read_args (int *,TYPE_1__*) ;
 int errort (int *,char*) ;
 scalar_t__ is_keyword (int ,char) ;
 int * make_vector () ;
 int peek_token () ;
 scalar_t__ vec_len (int *) ;

__attribute__((used)) static Vector *read_args(Token *tok, Macro *macro) {
    if (macro->nargs == 0 && is_keyword(peek_token(), ')')) {



        return make_vector();
    }
    Vector *args = do_read_args(tok, macro);
    if (vec_len(args) != macro->nargs)
        errort(tok, "macro argument number does not match");
    return args;
}
