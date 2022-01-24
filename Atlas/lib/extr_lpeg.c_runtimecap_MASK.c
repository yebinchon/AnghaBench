#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_11__ {char const* s; int ptop; scalar_t__ valuecached; int /*<<< orphan*/ * L; TYPE_1__* cap; TYPE_1__* ocap; } ;
struct TYPE_10__ {char const* s; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ Capture ;
typedef  TYPE_2__ CapState ;

/* Variables and functions */
 int /*<<< orphan*/  Cclose ; 
 scalar_t__ Cruntime ; 
 int /*<<< orphan*/  LUA_MULTRET ; 
 int /*<<< orphan*/  SUBJIDX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9 (lua_State *L, Capture *close, Capture *ocap,
                       const char *o, const char *s, int ptop) {
  CapState cs;
  int n;
  Capture *open = FUNC2(close);
  FUNC0(FUNC1(open) == Cruntime);
  close->kind = Cclose;
  close->s = s;
  cs.ocap = ocap; cs.cap = open; cs.L = L;
  cs.s = o; cs.valuecached = 0; cs.ptop = ptop;
  FUNC3(L, 4, "too many runtime captures");
  FUNC8(&cs);
  FUNC6(L, SUBJIDX);  /* push original subject */
  FUNC5(L, s - o + 1);  /* current position */
  n = FUNC7(&cs, 0);
  FUNC4(L, n + 2, LUA_MULTRET);
  return close - open;
}