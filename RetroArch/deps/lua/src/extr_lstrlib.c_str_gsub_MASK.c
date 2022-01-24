#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lua_Integer ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_6__ {char const* src_end; } ;
typedef  TYPE_1__ MatchState ;

/* Variables and functions */
 int LUA_TFUNCTION ; 
 int LUA_TNUMBER ; 
 int LUA_TSTRING ; 
 int LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 char* FUNC10 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,char const*,size_t,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13 (lua_State *L) {
  size_t srcl, lp;
  const char *src = FUNC5(L, 1, &srcl);  /* subject */
  const char *p = FUNC5(L, 2, &lp);  /* pattern */
  const char *lastmatch = NULL;  /* end of last match */
  int tr = FUNC9(L, 3);  /* replacement type */
  lua_Integer max_s = FUNC6(L, 4, srcl + 1);  /* max replacements */
  int anchor = (*p == '^');
  lua_Integer n = 0;  /* replacement count */
  MatchState ms;
  luaL_Buffer b;
  FUNC3(L, tr == LUA_TNUMBER || tr == LUA_TSTRING ||
                   tr == LUA_TFUNCTION || tr == LUA_TTABLE, 3,
                      "string/function/table expected");
  FUNC4(L, &b);
  if (anchor) {
    p++; lp--;  /* skip anchor character */
  }
  FUNC11(&ms, L, src, srcl, p, lp);
  while (n < max_s) {
    const char *e;
    FUNC12(&ms);  /* (re)prepare state for new match */
    if ((e = FUNC10(&ms, src, p)) != NULL && e != lastmatch) {  /* match? */
      n++;
      FUNC0(&ms, &b, src, e, tr);  /* add replacement to buffer */
      src = lastmatch = e;
    }
    else if (src < ms.src_end)  /* otherwise, skip one character */
      FUNC1(&b, *src++);
    else break;  /* end of subject */
    if (anchor) break;
  }
  FUNC2(&b, src, ms.src_end-src);
  FUNC7(&b);
  FUNC8(L, n);  /* number of substitutions */
  return 2;
}