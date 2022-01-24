#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ errfunc; scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
typedef  scalar_t__ StkId ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_ERRERR ; 
 int /*<<< orphan*/  LUA_ERRRUN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6 (lua_State *L) {
  if (L->errfunc != 0) {  /* is there an error handling function? */
    StkId errfunc = FUNC3(L, L->errfunc);
    if (!FUNC5(errfunc)) FUNC2(L, LUA_ERRERR);
    FUNC4(L, L->top, L->top - 1);  /* move argument */
    FUNC4(L, L->top - 1, errfunc);  /* push function */
    FUNC0(L);
    FUNC1(L, L->top - 2, 1);  /* call it */
  }
  FUNC2(L, LUA_ERRRUN);
}