#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_9__ {char* s; } ;
struct TYPE_8__ {TYPE_5__* cap; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ CapState ;

/* Variables and functions */
 scalar_t__ Cstring ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 char* FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC13 (CapState *cs) {
  luaL_Buffer b;
  const char *curr = (cs->cap - 1)->s;
  FUNC5(cs->L, &b);
  while (!FUNC2(cs->cap)) {
    int n;
    const char *next = cs->cap->s;
    FUNC3(&b, curr, next - curr);
    if (FUNC0(cs->cap) == Cstring)
      FUNC12(&b, cs);  /* add capture directly to buffer */
    else if ((n = FUNC11(cs)) == 0) {  /* no capture? */
      curr = next;  /* result keeps the original text */
      continue;
    }
    else {
      if (n > 1) FUNC10(cs->L, n - 1);  /* ignore extra values */
      if (!FUNC9(cs->L, -1))
        FUNC6(cs->L, "invalid replacement value (a %s)",
                          FUNC8(cs->L, -1));
      FUNC4(&b);  /* add result to accumulator */
    }
    /* continue after match */
    curr = FUNC1(cs->cap - 1);
  }
  FUNC3(&b, curr, cs->cap->s - curr);
  FUNC7(&b);
  cs->cap++;
}