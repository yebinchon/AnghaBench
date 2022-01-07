
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ beg; } ;
typedef TYPE_1__ Case ;


 int error (char*,scalar_t__,...) ;
 TYPE_1__* vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static void check_case_duplicates(Vector *cases) {
    int len = vec_len(cases);
    Case *x = vec_get(cases, len - 1);
    for (int i = 0; i < len - 1; i++) {
        Case *y = vec_get(cases, i);
        if (x->end < y->beg || y->end < x->beg)
            continue;
        if (x->beg == x->end)
            error("duplicate case value: %d", x->beg);
        error("duplicate case value: %d ... %d", x->beg, x->end);
    }
}
