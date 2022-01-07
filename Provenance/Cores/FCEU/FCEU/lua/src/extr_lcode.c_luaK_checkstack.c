
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int freereg; TYPE_1__* f; int ls; } ;
struct TYPE_4__ {int maxstacksize; } ;
typedef TYPE_2__ FuncState ;


 int MAXSTACK ;
 int cast_byte (int) ;
 int luaX_syntaxerror (int ,char*) ;

void luaK_checkstack (FuncState *fs, int n) {
  int newstack = fs->freereg + n;
  if (newstack > fs->f->maxstacksize) {
    if (newstack >= MAXSTACK)
      luaX_syntaxerror(fs->ls, "function or expression too complex");
    fs->f->maxstacksize = cast_byte(newstack);
  }
}
