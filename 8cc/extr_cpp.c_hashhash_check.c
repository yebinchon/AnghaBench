
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;


 int KHASHHASH ;
 int errort (int ,char*) ;
 scalar_t__ is_keyword (int ,int ) ;
 int vec_head (int *) ;
 scalar_t__ vec_len (int *) ;
 int vec_tail (int *) ;

__attribute__((used)) static void hashhash_check(Vector *v) {
    if (vec_len(v) == 0)
        return;
    if (is_keyword(vec_head(v), KHASHHASH))
        errort(vec_head(v), "'##' cannot appear at start of macro expansion");
    if (is_keyword(vec_tail(v), KHASHHASH))
        errort(vec_tail(v), "'##' cannot appear at end of macro expansion");
}
