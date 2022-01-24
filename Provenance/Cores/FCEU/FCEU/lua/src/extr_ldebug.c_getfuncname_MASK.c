#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_11__ {TYPE_1__* p; } ;
struct TYPE_13__ {TYPE_2__ l; } ;
struct TYPE_12__ {scalar_t__ tailcalls; } ;
struct TYPE_10__ {int /*<<< orphan*/ * code; } ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  TYPE_3__ CallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ OP_CALL ; 
 scalar_t__ OP_TAILCALL ; 
 scalar_t__ OP_TFORLOOP ; 
 TYPE_8__* FUNC2 (TYPE_3__*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 char const* FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static const char *FUNC6 (lua_State *L, CallInfo *ci, const char **name) {
  Instruction i;
  if ((FUNC5(ci) && ci->tailcalls > 0) || !FUNC5(ci - 1))
    return NULL;  /* calling function is not Lua (or is unknown) */
  ci--;  /* calling function */
  i = FUNC2(ci)->l.p->code[FUNC3(L, ci)];
  if (FUNC1(i) == OP_CALL || FUNC1(i) == OP_TAILCALL ||
      FUNC1(i) == OP_TFORLOOP)
    return FUNC4(L, ci, FUNC0(i), name);
  else
    return NULL;  /* no useful name can be found */
}