
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ConsControl {int tostore; int na; int v; } ;
struct TYPE_4__ {int fs; } ;
typedef TYPE_1__ LexState ;


 int MAX_INT ;
 int checklimit (int ,int ,int ,char*) ;
 int expr (TYPE_1__*,int *) ;

__attribute__((used)) static void listfield (LexState *ls, struct ConsControl *cc) {

  expr(ls, &cc->v);
  checklimit(ls->fs, cc->na, MAX_INT, "items in a constructor");
  cc->na++;
  cc->tostore++;
}
