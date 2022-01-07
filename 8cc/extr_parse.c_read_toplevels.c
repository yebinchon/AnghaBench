
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_2__ {scalar_t__ kind; } ;


 scalar_t__ TEOF ;
 scalar_t__ is_funcdef () ;
 int * make_vector () ;
 TYPE_1__* peek () ;
 int read_decl (int *,int) ;
 int read_funcdef () ;
 int * toplevels ;
 int vec_push (int *,int ) ;

Vector *read_toplevels() {
    toplevels = make_vector();
    for (;;) {
        if (peek()->kind == TEOF)
            return toplevels;
        if (is_funcdef())
            vec_push(toplevels, read_funcdef());
        else
            read_decl(toplevels, 1);
    }
}
