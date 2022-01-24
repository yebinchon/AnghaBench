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
#define  LUA_TBOOLEAN 131 
#define  LUA_TNIL 130 
#define  LUA_TNUMBER 129 
#define  LUA_TSTRING 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11 (lua_State *L) {
  FUNC1(L, 1);
  if (FUNC0(L, 1, "__tostring"))  /* is there a metafield? */
    return 1;  /* use its value */
  switch (FUNC10(L, 1)) {
    case LUA_TNUMBER:
      FUNC5(L, FUNC9(L, 1));
      break;
    case LUA_TSTRING:
      FUNC6(L, 1);
      break;
    case LUA_TBOOLEAN:
      FUNC5(L, (FUNC7(L, 1) ? "true" : "false"));
      break;
    case LUA_TNIL:
      FUNC4(L, "nil");
      break;
    default:
      FUNC3(L, "%s: %p", FUNC2(L, 1), FUNC8(L, 1));
      break;
  }
  return 1;
}