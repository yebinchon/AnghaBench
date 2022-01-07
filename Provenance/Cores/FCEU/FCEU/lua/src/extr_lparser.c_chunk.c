
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int token; } ;
struct TYPE_13__ {TYPE_2__* fs; TYPE_3__ t; } ;
struct TYPE_11__ {scalar_t__ freereg; scalar_t__ nactvar; TYPE_1__* f; } ;
struct TYPE_10__ {scalar_t__ maxstacksize; } ;
typedef TYPE_4__ LexState ;


 int block_follow (int ) ;
 int enterlevel (TYPE_4__*) ;
 int leavelevel (TYPE_4__*) ;
 int lua_assert (int) ;
 int statement (TYPE_4__*) ;
 int testnext (TYPE_4__*,char) ;

__attribute__((used)) static void chunk (LexState *ls) {

  int islast = 0;
  enterlevel(ls);
  while (!islast && !block_follow(ls->t.token)) {
    islast = statement(ls);
    testnext(ls, ';');
    lua_assert(ls->fs->f->maxstacksize >= ls->fs->freereg &&
               ls->fs->freereg >= ls->fs->nactvar);
    ls->fs->freereg = ls->fs->nactvar;
  }
  leavelevel(ls);
}
