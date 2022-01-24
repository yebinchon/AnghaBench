#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int lua_Integer ;
struct TYPE_4__ {int sizearray; int /*<<< orphan*/  const* array; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  const* luaO_nilobject ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

const TValue *FUNC7 (Table *t, lua_Integer key) {
  /* (1 <= key && key <= t->sizearray) */
  if (FUNC5(key) - 1 < t->sizearray)
    return &t->array[key - 1];
  else {
    Node *n = FUNC3(t, key);
    for (;;) {  /* check whether 'key' is somewhere in the chain */
      if (FUNC6(FUNC0(n)) && FUNC4(FUNC0(n)) == key)
        return FUNC2(n);  /* that's it */
      else {
        int nx = FUNC1(n);
        if (nx == 0) break;
        n += nx;
      }
    }
    return luaO_nilobject;
  }
}