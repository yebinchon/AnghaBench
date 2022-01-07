
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Token ;
struct TYPE_3__ {scalar_t__ ctx; int wastrue; int * include_guard; } ;
typedef TYPE_1__ CondIncl ;


 scalar_t__ IN_ELIF ;
 scalar_t__ IN_ELSE ;
 int cond_incl_stack ;
 int errort (int *,char*) ;
 int read_constexpr () ;
 int skip_cond_incl () ;
 scalar_t__ vec_len (int ) ;
 TYPE_1__* vec_tail (int ) ;

__attribute__((used)) static void read_elif(Token *hash) {
    if (vec_len(cond_incl_stack) == 0)
        errort(hash, "stray #elif");
    CondIncl *ci = vec_tail(cond_incl_stack);
    if (ci->ctx == IN_ELSE)
        errort(hash, "#elif after #else");
    ci->ctx = IN_ELIF;
    ci->include_guard = ((void*)0);
    if (ci->wastrue || !read_constexpr()) {
        skip_cond_incl();
        return;
    }
    ci->wastrue = 1;
}
