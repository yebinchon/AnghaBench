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
struct TYPE_3__ {int /*<<< orphan*/ * closef; int /*<<< orphan*/ * f; } ;
typedef  TYPE_1__ LStream ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  io_noclose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (lua_State *L, FILE *f, const char *k,
                           const char *fname) {
  LStream *p = FUNC2(L);
  p->f = f;
  p->closef = &io_noclose;
  if (k != NULL) {
    FUNC0(L, -1);
    FUNC1(L, LUA_REGISTRYINDEX, k);  /* add file to registry */
  }
  FUNC1(L, -2, fname);  /* add file to module */
}