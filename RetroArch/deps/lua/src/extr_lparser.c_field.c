
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ConsControl {int dummy; } ;
struct TYPE_7__ {int token; } ;
struct TYPE_8__ {TYPE_1__ t; } ;
typedef TYPE_2__ LexState ;



 int listfield (TYPE_2__*,struct ConsControl*) ;
 char luaX_lookahead (TYPE_2__*) ;
 int recfield (TYPE_2__*,struct ConsControl*) ;

__attribute__((used)) static void field (LexState *ls, struct ConsControl *cc) {

  switch(ls->t.token) {
    case 128: {
      if (luaX_lookahead(ls) != '=')
        listfield(ls, cc);
      else
        recfield(ls, cc);
      break;
    }
    case '[': {
      recfield(ls, cc);
      break;
    }
    default: {
      listfield(ls, cc);
      break;
    }
  }
}
