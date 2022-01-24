#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {size_t totalbytes; int /*<<< orphan*/  ud; void* (* frealloc ) (int /*<<< orphan*/ ,void*,size_t,size_t) ;} ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LUA_ERRMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,void*,size_t,size_t) ; 

void *FUNC4 (lua_State *L, void *block, size_t osize, size_t nsize) {
  global_State *g = FUNC0(L);
  FUNC2((osize == 0) == (block == NULL));
  block = (*g->frealloc)(g->ud, block, osize, nsize);
  if (block == NULL && nsize > 0)
    FUNC1(L, LUA_ERRMEM);
  FUNC2((nsize == 0) == (block == NULL));
  g->totalbytes = (g->totalbytes - osize) + nsize;
  return block;
}