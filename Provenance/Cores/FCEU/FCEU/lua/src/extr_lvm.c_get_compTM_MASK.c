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
typedef  int /*<<< orphan*/  Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TMS ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const TValue *FUNC2 (lua_State *L, Table *mt1, Table *mt2,
                                  TMS event) {
  const TValue *tm1 = FUNC0(L, mt1, event);
  const TValue *tm2;
  if (tm1 == NULL) return NULL;  /* no metamethod */
  if (mt1 == mt2) return tm1;  /* same metatables => same metamethods */
  tm2 = FUNC0(L, mt2, event);
  if (tm2 == NULL) return NULL;  /* no metamethod */
  if (FUNC1(tm1, tm2))  /* same metamethods? */
    return tm1;
  return NULL;
}