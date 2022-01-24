#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_4__* ci; } ;
typedef  TYPE_3__ lua_State ;
struct TYPE_14__ {int base; } ;
struct TYPE_15__ {TYPE_1__ l; } ;
struct TYPE_17__ {TYPE_2__ u; } ;
struct TYPE_13__ {int /*<<< orphan*/  p; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_4__ CallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 TYPE_11__* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 char* FUNC4 (TYPE_4__*,int /*<<< orphan*/  const*,char const**) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int /*<<< orphan*/  const*) ; 
 char const* FUNC7 (TYPE_3__*,char*,char const*,char const*) ; 

__attribute__((used)) static const char *FUNC8 (lua_State *L, const TValue *o) {
  const char *name = NULL;  /* to avoid warnings */
  CallInfo *ci = L->ci;
  const char *kind = NULL;
  if (FUNC5(ci)) {
    kind = FUNC4(ci, o, &name);  /* check whether 'o' is an upvalue */
    if (!kind && FUNC6(ci, o))  /* no? try a register */
      kind = FUNC3(FUNC1(ci)->p, FUNC2(ci),
                        FUNC0(o - ci->u.l.base), &name);
  }
  return (kind) ? FUNC7(L, " (%s '%s')", kind, name) : "";
}