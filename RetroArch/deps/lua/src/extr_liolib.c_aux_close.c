
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef int (* lua_CFunction ) (int *) ;
struct TYPE_3__ {int (* closef ) (int *) ;} ;
typedef TYPE_1__ LStream ;


 int stub1 (int *) ;
 TYPE_1__* tolstream (int *) ;

__attribute__((used)) static int aux_close (lua_State *L) {
  LStream *p = tolstream(L);
  volatile lua_CFunction cf = p->closef;
  p->closef = ((void*)0);
  return (*cf)(L);
}
