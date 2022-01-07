
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {size_t totalbytes; int ud; void* (* frealloc ) (int ,void*,size_t,size_t) ;} ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int LUA_ERRMEM ;
 int luaD_throw (int *,int ) ;
 int lua_assert (int) ;
 void* stub1 (int ,void*,size_t,size_t) ;

void *luaM_realloc_ (lua_State *L, void *block, size_t osize, size_t nsize) {
  global_State *g = G(L);
  lua_assert((osize == 0) == (block == ((void*)0)));
  block = (*g->frealloc)(g->ud, block, osize, nsize);
  if (block == ((void*)0) && nsize > 0)
    luaD_throw(L, LUA_ERRMEM);
  lua_assert((nsize == 0) == (block == ((void*)0)));
  g->totalbytes = (g->totalbytes - osize) + nsize;
  return block;
}
