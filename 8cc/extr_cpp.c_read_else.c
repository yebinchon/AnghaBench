
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Token ;
struct TYPE_3__ {scalar_t__ ctx; scalar_t__ wastrue; int * include_guard; } ;
typedef TYPE_1__ CondIncl ;


 scalar_t__ IN_ELSE ;
 int cond_incl_stack ;
 int errort (int *,char*) ;
 int expect_newline () ;
 int skip_cond_incl () ;
 scalar_t__ vec_len (int ) ;
 TYPE_1__* vec_tail (int ) ;

__attribute__((used)) static void read_else(Token *hash) {
    if (vec_len(cond_incl_stack) == 0)
        errort(hash, "stray #else");
    CondIncl *ci = vec_tail(cond_incl_stack);
    if (ci->ctx == IN_ELSE)
        errort(hash, "#else appears in #else");
    expect_newline();
    ci->ctx = IN_ELSE;
    ci->include_guard = ((void*)0);
    if (ci->wastrue)
        skip_cond_incl();
}
