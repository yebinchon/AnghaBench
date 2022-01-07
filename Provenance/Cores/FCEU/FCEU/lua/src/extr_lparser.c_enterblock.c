
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lu_byte ;
struct TYPE_6__ {scalar_t__ nactvar; struct TYPE_6__* previous; scalar_t__ upval; int isbreakable; int breaklist; } ;
struct TYPE_5__ {scalar_t__ nactvar; scalar_t__ freereg; TYPE_2__* bl; } ;
typedef TYPE_1__ FuncState ;
typedef TYPE_2__ BlockCnt ;


 int NO_JUMP ;
 int lua_assert (int) ;

__attribute__((used)) static void enterblock (FuncState *fs, BlockCnt *bl, lu_byte isbreakable) {
  bl->breaklist = NO_JUMP;
  bl->isbreakable = isbreakable;
  bl->nactvar = fs->nactvar;
  bl->upval = 0;
  bl->previous = fs->bl;
  fs->bl = bl;
  lua_assert(fs->freereg == fs->nactvar);
}
