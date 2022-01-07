
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vector ;
typedef int Token ;
struct TYPE_3__ {int nargs; scalar_t__ is_varg; } ;
typedef TYPE_1__ Macro ;


 int * make_vector () ;
 int * read_one_arg (int *,int*,int) ;
 int vec_len (int *) ;
 int vec_push (int *,int *) ;

__attribute__((used)) static Vector *do_read_args(Token *ident, Macro *macro) {
    Vector *r = make_vector();
    bool end = 0;
    while (!end) {
        bool in_ellipsis = (macro->is_varg && vec_len(r) + 1 == macro->nargs);
        vec_push(r, read_one_arg(ident, &end, in_ellipsis));
    }
    if (macro->is_varg && vec_len(r) == macro->nargs - 1)
        vec_push(r, make_vector());
    return r;
}
