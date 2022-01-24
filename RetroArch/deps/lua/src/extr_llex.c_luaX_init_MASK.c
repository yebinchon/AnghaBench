#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/  extra; } ;
typedef  TYPE_1__ TString ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_ENV ; 
 int NUM_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * luaX_tokens ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5 (lua_State *L) {
  int i;
  TString *e = FUNC3(L, LUA_ENV);  /* create env name */
  FUNC1(L, FUNC4(e));  /* never collect this name */
  for (i=0; i<NUM_RESERVED; i++) {
    TString *ts = FUNC2(L, luaX_tokens[i]);
    FUNC1(L, FUNC4(ts));  /* reserved words are never collected */
    ts->extra = FUNC0(i+1);  /* reserved word */
  }
}