
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int top; TYPE_2__* ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_9__ {int func; int base; } ;
typedef int StkId ;
typedef int Proto ;
typedef TYPE_2__ CallInfo ;


 int currentpc (TYPE_1__*,TYPE_2__*) ;
 int * getluaproto (TYPE_2__*) ;
 char* luaF_getlocalname (int *,int,int ) ;

__attribute__((used)) static const char *findlocal (lua_State *L, CallInfo *ci, int n) {
  const char *name;
  Proto *fp = getluaproto(ci);
  if (fp && (name = luaF_getlocalname(fp, n, currentpc(L, ci))) != ((void*)0))
    return name;
  else {
    StkId limit = (ci == L->ci) ? L->top : (ci+1)->func;
    if (limit - ci->base >= n && n > 0)
      return "(*temporary)";
    else
      return ((void*)0);
  }
}
