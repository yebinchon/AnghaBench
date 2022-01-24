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
struct TYPE_5__ {unsigned int sizearray; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  StkId ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC13 (lua_State *L, Table *t, StkId key) {
  unsigned int i;
  if (FUNC12(key)) return 0;  /* first iteration */
  i = FUNC0(key);
  if (i != 0 && i <= t->sizearray)  /* is 'key' inside array part? */
    return i;  /* yes; that's the index */
  else {
    int nx;
    Node *n = FUNC10(t, key);
    for (;;) {  /* check whether 'key' is somewhere in the chain */
      /* key may be dead already, but it is ok to use it in 'next' */
      if (FUNC9(FUNC4(n), key) ||
            (FUNC11(FUNC4(n)) && FUNC7(key) &&
             FUNC2(FUNC4(n)) == FUNC3(key))) {
        i = FUNC1(n - FUNC6(t, 0));  /* key index in hash table */
        /* hash elements are numbered after array ones */
        return (i + 1) + t->sizearray;
      }
      nx = FUNC5(n);
      if (nx == 0)
        FUNC8(L, "invalid key to 'next'");  /* key not found */
      else n += nx;
    }
  }
}