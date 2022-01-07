
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* file; } ;
typedef TYPE_2__ Token ;
struct TYPE_10__ {int include_guard; TYPE_1__* file; } ;
struct TYPE_8__ {int name; } ;
typedef TYPE_3__ CondIncl ;


 int cond_incl_stack ;
 int errort (TYPE_2__*,char*) ;
 int expect_newline () ;
 int include_guard ;
 int map_put (int ,int ,int ) ;
 TYPE_2__* skip_newlines () ;
 scalar_t__ vec_len (int ) ;
 TYPE_3__* vec_pop (int ) ;

__attribute__((used)) static void read_endif(Token *hash) {
    if (vec_len(cond_incl_stack) == 0)
        errort(hash, "stray #endif");
    CondIncl *ci = vec_pop(cond_incl_stack);
    expect_newline();




    if (!ci->include_guard || ci->file != hash->file)
        return;
    Token *last = skip_newlines();
    if (ci->file != last->file)
        map_put(include_guard, ci->file->name, ci->include_guard);
}
