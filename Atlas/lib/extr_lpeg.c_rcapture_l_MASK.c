#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  Cfunction ; 
 int /*<<< orphan*/  Cquery ; 
 int /*<<< orphan*/  Cstring ; 
#define  LUA_TFUNCTION 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3 (lua_State *L) {
  switch (FUNC2(L, 2)) {
    case LUA_TFUNCTION: return FUNC0(L, Cfunction, 2);
    case LUA_TTABLE: return FUNC0(L, Cquery, 2);
    case LUA_TSTRING: return FUNC0(L, Cstring, 2);
    default: return FUNC1(L, 2, "invalid replacement value");
  }
}