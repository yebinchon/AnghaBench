
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int code; } ;
struct TYPE_6__ {scalar_t__* buff; TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 int CHARSETINSTSIZE ;
 int ISet ;
 size_t i ;
 int loopset (size_t,scalar_t__) ;
 TYPE_2__* newpatt (int *,int ) ;

__attribute__((used)) static Instruction *newcharset (lua_State *L) {
  Instruction *p = newpatt(L, CHARSETINSTSIZE);
  p[0].i.code = ISet;
  loopset(i, p[1].buff[i] = 0);
  return p;
}
